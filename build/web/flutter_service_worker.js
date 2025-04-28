'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "8ee0e47f2d0c2615ddc09d87377436ae",
"assets/AssetManifest.bin.json": "321fb10320d1e0850396e83a8a87eaf4",
"assets/AssetManifest.json": "019a59a34d0fec299c8085e52c4b842f",
"assets/assets/audios/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/fonts/AttenRoundNewExtraBold.otf": "8297dd83997ca40a286b86fb90144d3b",
"assets/assets/fonts/AttenRoundNewMedium.otf": "cad41bbf5189b4a6e724a4f337092771",
"assets/assets/fonts/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/email.svg": "6f2111a3bfbfa2d3f7ba6765c004d3ea",
"assets/assets/images/facebook.svg": "6461ad9eb428c4d63270beba80ffb274",
"assets/assets/images/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/images/fondo1-mobile2.png": "659a4eb8dca55186a64152de69d8f18e",
"assets/assets/images/fondo1.png": "524750e261495b0c6bb83c10b458e68a",
"assets/assets/images/fondo1.webp": "553ab213c3cbe15a09a12563c38268ba",
"assets/assets/images/fondo2-mobile.png": "1b22082a5e02ffb923265373197fc16d",
"assets/assets/images/fondo2.png": "31206b5bb751316e9e6f208cfffa909e",
"assets/assets/images/fondo2.webp": "fd895fc7f6d51213f76af5cb162bfba8",
"assets/assets/images/fondo3.png": "96b5771c4bb1fb5d8b2869bdce241505",
"assets/assets/images/fondo3.webp": "0120544397cba4db8bbbaafcd8832642",
"assets/assets/images/fondo4.png": "921554224c5dc3654b81384e6d377e52",
"assets/assets/images/fondo4.webp": "b819da5ee3752f76e0d43d9b95accdff",
"assets/assets/images/fondo5.webp": "f53582894ca73696c585ddece0965159",
"assets/assets/images/fondo6.webp": "da2be760371b88f7b94fc12f413b62a7",
"assets/assets/images/fondoipad1.webp": "6533497a272a9e81d9eaa643f6fe1d34",
"assets/assets/images/fondoipad2.webp": "da24c5b0e7700e0bf39dea0d712f727f",
"assets/assets/images/fondoipad3.webp": "413cae1853e15f7712f0b9e561306755",
"assets/assets/images/fondoipad6.webp": "13757d72738503aa75c0d04ef826cbb4",
"assets/assets/images/happy.svg": "03020eac14c876a5cb720bd7a72c8e32",
"assets/assets/images/instagram.svg": "2e04cf134900178e8adcb723ebf318de",
"assets/assets/images/Logo-Nouveau-removebg_white.png": "6aabe44967dd44a79fc0f36e35ba9d62",
"assets/assets/images/logo-qr-coats.png": "6b5c8147e5290df338c3f846eff791df",
"assets/assets/images/logo.svg": "35d6aed70d20d7f1d3bc16938053b395",
"assets/assets/images/phone.svg": "3a3b1a30071f09aa42fd80e8d572514d",
"assets/assets/images/question-circle-2.svg": "89800772a7b6dc71157d6a2ad325b597",
"assets/assets/images/question.svg": "57f632b098d0a07168bc5d6e31949f7f",
"assets/assets/images/tiket.svg": "8ced2a266c79e8b8f908c6726e4bd732",
"assets/assets/images/touch.svg": "77d66d1f28b5e7e9a7397da2896a26d4",
"assets/assets/images/ususario.png": "175155527caf91d0c04d5e7b20bab4e5",
"assets/assets/lottie_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/pdfs/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/rive_animations/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/assets/videos/favicon.png": "5dcef449791fa27946b3d35ad8803796",
"assets/FontManifest.json": "ab62774dad9f875ae316e032fa2ffed2",
"assets/fonts/MaterialIcons-Regular.otf": "c0ad29d56cfe3890223c02da3c6e0448",
"assets/NOTICES": "b437a42e9f186375ce9d9595755d7a1f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "17ee8e30dde24e349e70ffcdc0073fb0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "f3307f62ddff94d2cd8b103daf8d1b0f",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "04f83c01dded195a11d21c2edf643455",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "2704101cb06ce66e2000356a312be25c",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "b49db708d37c39c03a0baa0fb3706553",
"icons/favicon.png": "927b970dcde12a3809ac816cd1b32524",
"icons/icon-192.png": "927b970dcde12a3809ac816cd1b32524",
"icons/icon-500.png": "c0a99f07dfdabdaa1010a2756d10863e",
"index.html": "8ab6bb8650b22cff78d21aa4de7567cc",
"/": "8ab6bb8650b22cff78d21aa4de7567cc",
"main.dart.js": "2aafa90dad76c97ddbee1992c98ca9db",
"manifest.json": "bc03297d86ac1f52198ba19117c36ae4",
"version.json": "17a2e5785d48c6fe23b17c224ccea538"};
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
