// ==UserScript==
// @name         Reddit Video Downloader
// @namespace    https://lawrenzo.com/p/reddit-video-downloader
// @version      0.2.6
// @description  Adds button to direct link or download the stupidly hard to save or share directly reddit videos. Designed to work on new Reddit only. Buttons appear when viewing the specific post -- does not work on preview/expand on post listing pages.
// @author       Lawrence Sim
// @license      WTFPL (http://www.wtfpl.net)
// @grant        none
// @match        *://*.reddit.com/*
// ==/UserScript==
'use strict';
(function() {
    var btnStyles = {
        "margin": "0.2em",
        "font-size": "0.8em",
        "padding": "0.4em 0.6em",
        "border-radius": "4px",
        "background": "#fff"
    };
    var addLinks = function() {
        var videoElem = document.querySelector("[data-test-id='post-content'] video");
        if(!videoElem || videoElem.getAttribute("vlinked")) return;
        videoElem.setAttribute("vlinked", 1);
        var req = new XMLHttpRequest();
        req.onreadystatechange = () => {
            if(req.readyState == XMLHttpRequest.DONE && req.status == 200) {
                let json, postData, vidData;
                try {
                    json = JSON.parse(req.responseText);
                    postData = json[0].data.children[0].data;
                    vidData = postData.secure_media.reddit_video;
                } catch(e) { }
                if(!vidData) return console.log(postData || json || req.responseText);
                console.log(vidData);

                let parElem = videoElem.closest("[data-test-id='post-content']");

                let a = document.createElement("a"),
                    btn = document.createElement("button");
                a.append(btn);
                a.href= vidData.fallback_url;
                a.target = "_blank";
                btn.innerHTML = "Direct Video Link (no sound)";
                btn.style['margin-top'] = "0.4em";
                parElem.append(a);

                let a2 = document.createElement("a"),
                    btn2 = document.createElement("button");
                a2.append(btn2);
                a2.href= window.location.href.replace(/reddit.com/, "reddit.tube");
                a2.target = "_blank";
                btn2.innerHTML = "Download via Reddit.Tube";
                btn2.style['margin-top'] = "0.4em";
                btn2.style['margin-left'] = "0.2em";
                parElem.append(a2);
                
                for(let key in btnStyles) {
                    btn.style[key] = btnStyles[key];
                    btn2.style[key] = btnStyles[key];
                }
            }
        }
        req.open("GET", window.location.href.split("?")[0].replace(/\/$/, "")+".json");
        req.send();
    };
    addLinks();
    var obs = new MutationObserver(addLinks);
    obs.observe(document.body, {childList:true, subtree:true});
})();