// ~/.finicky.js

/* 
module.exports = {
  defaultBrowser: 'Google Chrome',
  rewrite: [
    {
      // Redirect all urls to use https
      match: ({ url }) => url.protocol === "http",
      url: { protocol: "https" }
    }
  ],
  handlers: [
    {
      // Open apple.com and example.org urls in Safari
      match: ["apple.com/*", "example.org/*"],
      browser: chorme
    },
    {
      // Open any url that includes the string "workplace" in Firefox
      match: /workplace/,
      browser: "Firefox"
    },
    {
      // Open google.com and *.google.com urls in Google Chrome
      match: [
        "google.com/*", // match google.com urls
        "*.google.com/*", // match google.com subdomains
      ],
      browser: "Google Chrome"
    }
  ]
};
*/

const firefox = "Firefox";
const chrome = "Google Chrome";
const safari = "Safari";

module.exports = {
  defaultBrowser: firefox,
  handlers: [
    {
      match: [/woowa\.in/, /baemin\.in/, /gather\.town/],
      browser: chrome,
    },
  ],
};
