import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Everybody should believe in something", "I believe I’ll have another drink."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
