import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Please drink responsibly - 2 much booze + I'll tell your Mum."],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
