// ==UserScript==
// @name         Better Reddit Image Previews
// @namespace    https://lawrenzo.com/p/better-reddit-image-previews
// @version      0.1.1
// @description  Fixes issues with image carousels having images that don't fit the height. As well, image previews, on clicking, instead of linking to the image, link to the thread, where you have to click on the image yet again to view it in isolation.
// @author       Lawrence Sim
// @license      WTFPL (http://www.wtfpl.net)
// @grant        none
// @match        *://*.reddit.com/*
// ==/UserScript==
'use strict';
(function() {
    var fixImages = function() {
        document.querySelectorAll("[data-click-id='background'] div[tabindex='0'] ul li figure img")
            .forEach(function(img) {
                if(img.getAttribute("ifix")) return;
                img.style.height = "100%";
                img.parentElement.style.height = "100%";
                img.addEventListener("click", function(evt) {
                    window.open(img.getAttribute("src"));
                    evt.stopPropagation();
                });
                img.setAttribute("ifix", 1);
            });
        document.querySelectorAll("[data-click-id='background'] img[alt='Post image']")
            .forEach(function(img) {
                if(img.getAttribute("ifix")) return;
                img.addEventListener("click", function(evt) {
                    window.open(img.getAttribute("src"));
                    evt.stopPropagation();
                    evt.preventDefault();
                });
                img.setAttribute("ifix", 1);
            });
    }
    fixImages();
    (new MutationObserver(fixImages)).observe(
        document.body,
        {childList:true, subtree:true}
    );
})();