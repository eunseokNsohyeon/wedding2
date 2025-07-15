'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "a8d5c175b05ad0510088a74e396404ca",
"assets/assets/images/photo_11.jpg": "029d3451ec80cec160367f9987aa3c1a",
"assets/assets/images/fourth_02.jpg": "bfa89c0336d83bcbcfadaa374269d410",
"assets/assets/images/first.jpg": "0bea654c215fdfa40aca8ba05b5cc683",
"assets/assets/images/photo_20.jpg": "e2d2fd8e532957cffcf953434485720a",
"assets/assets/images/og_image2.jpeg": "6b777020185984ed6aa300c4d34443b5",
"assets/assets/images/naver_map.png": "0a639e19a375dea8889b207c995e0687",
"assets/assets/images/photo_14.jpg": "478128b59dda957a16f4d7a531173641",
"assets/assets/images/fourth_03.jpg": "8c903c2ed6520b7e3bce1fbd9ec6eaee",
"assets/assets/images/photo_16.jpg": "12686474e9fc073146db0bb219c7e9cf",
"assets/assets/images/kakao_map.png": "532188f2967dfc86cddabf7f8eac8ea0",
"assets/assets/images/photo_08.jpg": "10a0612bd3a057fbc35c034b31256a37",
"assets/assets/images/gallery.jpg": "9090d3ea27eb0f54693d16629691ef9d",
"assets/assets/images/t_map.png": "d91e15910c3e3a10c64923e53f8a76b9",
"assets/assets/images/bar.jpeg": "cd28b5c1455c4dba615fe036ba79bb12",
"assets/assets/images/photo_10.jpg": "c6166e647f0f178ed1d21f20f08b8d18",
"assets/assets/images/photo_06.jpg": "a56a2869e4b3562d430318414d9d8eaf",
"assets/assets/images/photo_13.jpg": "e6aa21bc07b2b0c2822be31a4ae8c5e6",
"assets/assets/images/third.jpeg": "a810f2febfcbd7843a8e8b9b97eee6d1",
"assets/assets/images/photo_03.jpg": "77ecf7589ea963a1506eeda52df3dcf1",
"assets/assets/images/photo_12.jpg": "72a077fd4a79fd065184a670d255110f",
"assets/assets/images/photo_07.jpg": "c3efc7376232a2bbc6289aa9f6ad9e18",
"assets/assets/images/photo_19.jpg": "d9fd654554ed17a848868ffd9426e1da",
"assets/assets/images/photo_02.jpg": "76b9c18ba0e5e6cbba0085e82e24b9d9",
"assets/assets/images/photo_15.jpg": "556294f4390f3d5905903a2c5b7a8148",
"assets/assets/images/photo_09.jpg": "280bc66e33adb6c8d72643e17de5e521",
"assets/assets/images/third_button.png": "6741119c442db5c1e48631f7033b3e10",
"assets/assets/images/photo_01.jpg": "ad3cc5c86835d68047936ef566b6fc6e",
"assets/assets/images/photo_18.jpg": "16652f96da1a0070f3e1b33636fb907d",
"assets/assets/images/fourth_01.jpg": "c4d2c4470da368f88b3da3d8a49bd5ac",
"assets/assets/images/photo_05.jpg": "d6e5a0380ce9dde9926163835ae8d910",
"assets/assets/images/fourth_04.jpg": "9dbd8a4919e834e2acfe5fefb0c2ce5b",
"assets/assets/images/photo_21.jpg": "ea1adb87e61b7bf362bb143aec446a22",
"assets/assets/images/photo_04.jpg": "685b5fface57b38a87b23de6c9fb5b24",
"assets/assets/images/photo_17.jpg": "627282cd7b9da4b98e06094aa95a2e30",
"assets/assets/images/second.jpg": "070ac381da6226bad53c1816de96ecce",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.json": "3c9dd854a7b1bfcf42c608c9e05e7b94",
"assets/fonts/MaterialIcons-Regular.otf": "1a75eda1eab5474c3c9b8391009678de",
"assets/AssetManifest.bin.json": "4d4166d44bc5984034842a3c0b344b0c",
"assets/NOTICES": "4c9d1e4c7dc4dade4a157f17c7f555db",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"version.json": "3d0a8b3e454aa8006e8b32fefcd8e5e3",
"manifest.json": "31e7c2c6af001e2496b0ee305fb34798",
"flutter_bootstrap.js": "e32a7c8044fedcd061b56cfb192d4566",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"index.html": "8b615fad8d31dff032594afe3dcc0947",
"/": "8b615fad8d31dff032594afe3dcc0947",
"style.css": "32252940f3d678e7832a370e5d189beb",
"favicon.ico": "55d1bb6f2a6ebd48b124ffaddf3e06dd",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"main.dart.js": "dd24334dde91bb712bcbd328493f6f20"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
