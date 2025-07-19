'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "ff043dd5c4e42b9cdd5a875c19e9d9c6",
"assets/AssetManifest.bin.json": "a220ce716d704f79139e11f7d5b0eca1",
"assets/AssetManifest.json": "2114a83e413442cd055daef6848345e3",
"assets/assets/acetaminophen.png": "63f9194ee251e4453d12e1a31c8850a5",
"assets/assets/acne.png": "60262a56e84cca63bad224eb8c135c5d",
"assets/assets/aller.png": "18d0d34d3bf7c1a268418750349b8773",
"assets/assets/antacid.png": "f2b870812cee938e7bfcb1bcd822539c",
"assets/assets/antidiarrheal.png": "fa0759da74fe41c3ef34ec0103c4e6f4",
"assets/assets/antifungal.png": "cc518f9f7a1ace08cae443e195e49db5",
"assets/assets/aspirin.png": "c8384a0d4bd0bf84d0e401e6d4b8d147",
"assets/assets/bg1.jpeg": "5d4a4c16125e32bc71b2e94801d3cc58",
"assets/assets/bg3.jpg": "c9934f88bcbd1a083a386407df2e7879",
"assets/assets/bg4.png": "a9bf8052530ebb807c6fe055c5784c3b",
"assets/assets/calcium.png": "cc4e47e5279446bd9b44c0ed08b03413",
"assets/assets/enzymes.png": "607014016deb04257d4013591909f786",
"assets/assets/facebook.png": "e33840915249faee603aeb7acebadc13",
"assets/assets/fish_oil.png": "0d36eed2f06c261920853319339dc18c",
"assets/assets/gloves.png": "594c201d54448a437e131398ed251b5b",
"assets/assets/google.png": "9c478a8fadd8faab68725d6a42177c7c",
"assets/assets/hydrocortisone.png": "38f7f4f1f9a42289237d56505b4242df",
"assets/assets/ibuprofen.png": "9074993071fdcfa1e990373550083dc3",
"assets/assets/imgdoc.png": "8b486d2eed65689c3e3103a2bee5a4f3",
"assets/assets/imgdoc1.png": "1f45379435636a839ce34aa5af9078cb",
"assets/assets/laxative.png": "40b9a0458899264ffb8afeda6ef82261",
"assets/assets/logob.jpg": "4bfeccbabb9936afa53323cb46a55e45",
"assets/assets/lotion.png": "3d3eafc5538c088be4a8be74d8658b83",
"assets/assets/mask.png": "ea0a54b0c39335f11b922ce5f6ae3570",
"assets/assets/med.png": "88da0af015c549170d954409b6f75ca2",
"assets/assets/migraine.png": "fc030341218d0a511a642e209a339204",
"assets/assets/mother.png": "7f4e39ffe97b3ba3878e02211e84d56b",
"assets/assets/multivitamin.png": "634de340e0066d8d262a697570ab2186",
"assets/assets/naproxen.png": "e341b1c2554c78c97adb22270ad2fa36",
"assets/assets/ointment.png": "9dd64568316b31ce3b56fad76a566bc6",
"assets/assets/pain.png": "e0b54c1206c1ec57739bf04fa58322eb",
"assets/assets/perso.png": "13c5ad8a0d38e6ab6c68fbf5ff6a0ee9",
"assets/assets/probiotic.png": "84d9d8ab7964cb48408b735d1fed6c4d",
"assets/assets/profile.jpg": "ea223876088c24cac9cb03de7dff72e6",
"assets/assets/sanitizer.png": "e1ef67bafe8501a8809caee3a6ae43f1",
"assets/assets/sex.png": "0ae42f2375338b26139379444c456704",
"assets/assets/shield.png": "256f4aed85ceaa85dd143abfc9ff9daa",
"assets/assets/skin.png": "767c9d896b5c87ceefabfd577dfed079",
"assets/assets/thermometer.png": "8fa7dabe30dd33441f1c1fdd833ffe73",
"assets/assets/vita.png": "4f90c3b900b5347275ea53dff7a191a8",
"assets/assets/vitamin_c.png": "607ed57c8bd39cfb853c0cd3a040e144",
"assets/assets/vitamin_d.png": "0cd6e13ba734bd9a6bd07c551fb09952",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "9efe9fd00e7ba477d71b17087abf48cb",
"assets/NOTICES": "43c649ea1c35f51b3e6b6ddc32d3f8d3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "4235d84bfb748386e550277b70328403",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "e37857255e840f63fb7696fe891ab78f",
"/": "e37857255e840f63fb7696fe891ab78f",
"main.dart.js": "e8383bff6acd153a615b8be47485c249",
"manifest.json": "34d60a83ae929f39054f2ceeb6d9fc85",
"version.json": "99d95249490b65b0df36322b16a8c194"};
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
