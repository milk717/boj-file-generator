import * as cheerio from 'cheerio';
import axios from "axios";
import romanNumerals from "roman-numerals";

const validateLink = (link) => {
    return link.match(/https:\/\/www.acmicpc.net\/problem\/+\d+/);
}

const findProblemNumber = (link)=>{
    return link.split('/').at(-1);
}

const getSolvedHtml = async (number) => {
    const link = `https://solved.ac/search?query=${number}`;
    return await axios.get(link).then(r=>r.data);
}

const findTierAndName = (html)=>{
    const $ = cheerio.load(html);
    const tier = $('img.css-1vnxcg0').attr('alt');
    const name = $('span.__Latex__').text();
    return {tier, name};
}

const tierToShortForm = (tier)=>{
    return `${tier.at(0)}${romanNumerals.toArabic(tier.at(-1))}`;
}

const makeFileName = (number, name, tier) => {
    return [number, name, tier].join('_');
}

try{
    const bojLink = process.argv[2];
    if(!validateLink(bojLink)){
        process.exit(1);
    }

    const number = findProblemNumber(bojLink);
    const html = await getSolvedHtml(number).catch(() => process.exit(1));
    const {tier, name} = findTierAndName(html);
    const shortTier = tierToShortForm(tier);
    console.log(makeFileName(number, name, shortTier));
}catch (e){
    process.exit(1);
}
