import dracula.draw

from qutebrowser.api import interceptor


def filter_yt(info: interceptor.Request):
    url = info.request_url
    if (url.host() == "www.youtube.com" and url.path() == "/get_video_info"
            and "&adformat=" in url.query()):
        info.block()


interceptor.register(filter_yt)
config.load_autoconfig(False)
# open youtube ctrl+y
config.bind('<Ctrl-y>', 'hint links spawn mpv --volume=50 {hint-url}')
config.bind('<Ctrl-m>', 'spawn mpv --volume=50 {url}')
# zoom in - out
config.bind('<Ctrl-=>', 'zoom-in')
config.bind('<Ctrl-->', 'zoom-out')
# encodeing fire
c.content.default_encoding = 'utf-8'
# location track false
c.content.geolocation = False
# block both ads
c.content.blocking.method = 'both'
c.content.blocking.adblock.lists = [
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters-2020.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/legacy.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/badware.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/privacy.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/resource-abuse.txt",
    "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=1&mimetype=plaintext&_=223428",
    "https://raw.githubusercontent.com/brave/adblock-lists/master/brave-lists/brave-social.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/unbreak.txt",
    "https://raw.githubusercontent.com/brave/adblock-lists/master/brave-unbreak.txt"
]

# drawing dracula theme
dracula.draw.blood(c, {'spacing': {'vertical': 6, 'horizontal': 8}})

# Bindings for status bar+bottom bar
config.bind('xb', 'config-cycle statusbar.show always never')
config.bind('xt', 'config-cycle tabs.show always never')
config.bind(
    'xB',
    'config-cycle statusbar.show always never;; config-cycle tabs.show always never'
)

config.bind('xc', 'config-cycle tabs.show always never')
config.bind('xx', 'set tabs.show always;; later 5000 set tabs.show switching')
# chaneg default search engine
c.url.searchengines = {
    "DEFAULT": "https://search.brave.com/search?q={}",
    "goog": "https://www.google.co.uk/search?&q={}",
    "googi": "https://www.google.co.uk/search?q={}&tbm=isch",
    "wiki": "https://en.wikipedia.org/w/index.php?search={}",
    "steam": "http://store.steampowered.com/search/?term={}",
    "ddg": "https://duckduckgo.com/?q={}",
    "aur": "https://aur.archlinux.org/packages/?O=0&K={}",
    "arch":
    "https://wiki.archlinux.org/index.php?title=Special%3ASearch&search={}",
    "imdb": "http://www.imdb.com/find?ref_=nv_sr_fn&s=all&q={}",
    "dic": "http://www.dictionary.com/browse/{}",
    "ety": "http://www.etymonline.com/index.php?allowed_in_frame=0&search={}",
    "urban": "http://www.urbandictionary.com/define.php?term={}",
    "ddgi": "https://duckduckgo.com/?q={}&iar=images",
    "lutris": "https://lutris.net/games/?q={}",
    "deal": "https://isthereanydeal.com/search/?q={}",
    "gog": "https://www.gog.com/games?sort=popularity&search={}&page=1",
    "proton": "https://www.protondb.com/search?q={}",
    "qwant": "https://www.qwant.com/?q={}",
    "sp": "https://www.startpage.com/do/dsearch?query={}",
    "humble":
    "https://www.humblebundle.com/store/search?sort=bestselling&search={}",
    "tor": "https://www.magnetdl.com/search/?m=1&q={}",
    "torrent": "https://www.magnetdl.com/search/?m=1&q={}",
    "tom": "https://www.rottentomatoes.com/search?search={}",
    "itch": "https://itch.io/search?q={}"
}
c.url.start_pages = [
    'file:///media/Linux/Programming/webDesign/webthemes/tilde-enhanced/index.html'
]

# for the theme
config.source('onedark.py')

# import dracula.draw

# Load existing settings made via :set
# config.load_autoconfig()
#
# dracula.draw.blood(c, {
#     'spacing': {
#         'vertical': 6,
#         'horizontal': 8
#     }
# })
