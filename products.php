<?php

require_once('./admin/database/config.php');
require_once('./admin/inc/auxilliaries.php');

$cur_page = 'products';


$Products = new Admin($pdo, "products");
$Categories = new Admin($pdo, "categories");
$fetchCategory = $Categories->readWithNoRestriction();

$currentPage = isset($_GET['page']) ? $_GET['page'] : 1;
$categories = isset($_GET['category']) ? $_GET['category'] : array();

$totalRecords = $Products->getTotalRecords($categories);
$limit = 9;
// Calculate the total number of pages
$totalPages = ceil($totalRecords / $limit);

// Ensure that the current page is within the valid range
$page = min($currentPage, $totalPages);
$skip = $limit * ($page - 1);


$numAdjacentPages = 2;

// exit;
// 2. Construct an SQL query using these category IDs
if (!empty($categories)) {
  $fetchProducts = $Products->getPaginatedData($limit, $skip, $categories);
} else {
  $fetchProducts = $Products->getPaginatedData($limit, $skip);
}



?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Real Steel co. Ltd</title>

  <!-- <link rel="manifest" href="./favicon/site.webmanifest" /> -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="./styles/footer.css" />
  <link href="https://fonts.googleapis.com/css?family=Barlow Condensed" rel="stylesheet" />
  <!-- <link rel="stylesheet" href="./style.css" /> -->
  <link rel="stylesheet" href="./styles/product.css" />
  <!-- <link rel="stylesheet" href="./styles/nav.css" /> -->
  <style>
    .product {
      width: 260px;
    }

    body {
      overflow-x: hidden;
    }
  </style>
</head>

<body>
  <?php require_once './inc/nav-hero.php' ?>


  <h1 class="font-extrabold text-7xl px-4 text-center pt-36 text-white">Products Listing</h1>
  </section>


  <div class="grid grid-cols-1 sm:grid-cols-12 grid-rows-1 sm:gap-4 w-screen">
    <div class="filter-div sm:col-span-3">

      <!--
  This example requires some changes to your config:
  
  ```
  // tailwind.config.js
  module.exports = {
    // ...
    plugins: [
      // ...
      require('@tailwindcss/forms'),
    ],
  }
  ```
-->
      <div class="bg-white">
        <div>
          <!--
        Mobile filter dialog
  
        Off-canvas filters for mobile, show/hide based on off-canvas filters state.
      -->
          <div class="relative z-40 lg:hidden" role="dialog" aria-modal="true">
            <!--
          Off-canvas menu backdrop, show/hide based on off-canvas menu state.
  
          Entering: "transition-opacity ease-linear duration-300"
            From: "opacity-0"
            To: "opacity-100"
          Leaving: "transition-opacity ease-linear duration-300"
            From: "opacity-100"
            To: "opacity-0"
        -->
            <div class="fixed inset-0 bg-black bg-opacity-25"></div>

            <div class="fixed inset-0 z-40 flex">
              <!--
            Off-canvas menu, show/hide based on off-canvas menu state.
  
            Entering: "transition ease-in-out duration-300 transform"
              From: "translate-x-full"
              To: "translate-x-0"
            Leaving: "transition ease-in-out duration-300 transform"
              From: "translate-x-0"
              To: "translate-x-full"
          -->
              <div style="display: none;" class=" relative ml-auto flex h-full w-full max-w-xs flex-col overflow-y-auto bg-white py-4 pb-12 shadow-xl">
                <div class="flex items-center justify-between px-4">
                  <h2 class="text-lg font-medium text-gray-900">FiltersFF</h2>
                  <button type="button" class="-mr-2 flex h-10 w-10 items-center justify-center rounded-md bg-white p-2 text-gray-400">
                    <span class="sr-only">Close menu</span>
                    <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                      <path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                  </button>
                </div>

                <!-- Filters -->
                <form class="mt-4 border-t border-gray-200">
                  <!-- <h3 class="sr-only">Categories</h3> -->
                  <!-- <ul role="list" class="px-2 py-3 font-medium text-gray-900">
                <li>
                  <a href="#" class="block px-2 py-3">Totes</a>
                </li>
                <li>
                  <a href="#" class="block px-2 py-3">Backpacks</a>
                </li>
                <li>
                  <a href="#" class="block px-2 py-3">Travel Bags</a>
                </li>
                <li>
                  <a href="#" class="block px-2 py-3">Hip Bags</a>
                </li>
                <li>
                  <a href="#" class="block px-2 py-3">Laptop Sleeves</a>
                </li>
              </ul> -->

                  <div class="border-t border-gray-200 px-4 py-6">
                    <h3 class="-mx-2 -my-3 flow-root">
                      <!-- Expand/collapse section button -->
                      <button type="button" class="flex w-full items-center justify-between bg-white px-2 py-3 text-gray-400 hover:text-gray-500" aria-controls="filter-section-mobile-0" aria-expanded="false">
                        <span class="font-medium text-gray-900">Category</span>
                        <span class="ml-6 flex items-center">
                          <!-- Expand icon, show/hide based on section open state. -->
                          <svg class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />
                          </svg>
                          <!-- Collapse icon, show/hide based on section open state. -->
                          <svg class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M4 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H4.75A.75.75 0 014 10z" clip-rule="evenodd" />
                          </svg>
                        </span>
                      </button>
                    </h3>
                    <!-- Filter section, show/hide based on section state. MOBILE VIEW -->
                    <div class="pt-6" id="filter-section-mobile-0">
                      <div class="space-y-6">
                        <?php foreach ($fetchCategory as $category) { ?>
                          <div class="flex items-center">
                            <input id="filter-mobile-color-0" name="category[]" value="<?php echo $category['name'] ?>" type="checkbox" class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500" <?php echo in_array($category['id'], $categories) ? 'checked' : 'jj' ?>>

                            <label for="filter-mobile-color-0" class="ml-3 min-w-0 flex-1 text-gray-500"><?php echo $category['name'] ?></label>
                          </div>
                        <?php } ?>

                      </div>
                    </div>
                  </div>

                </form>
              </div>
            </div>
          </div>

          <main class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
            <div class="flex items-baseline justify-between border-b border-gray-200 pb-6 pt-8">
              <h1 class="text-4xl font-bold tracking-tight text-gray-900">Filter</h1>

              <div class="flex items-center">


                <button type="button" class="-m-2 ml-5 p-2 text-gray-400 hover:text-gray-500 sm:ml-7">
                  <span class="sr-only">View grid</span>
                  <!-- <svg class="h-5 w-5" aria-hidden="true" viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd" d="M4.25 2A2.25 2.25 0 002 4.25v2.5A2.25 2.25 0 004.25 9h2.5A2.25 2.25 0 009 6.75v-2.5A2.25 2.25 0 006.75 2h-2.5zm0 9A2.25 2.25 0 002 13.25v2.5A2.25 2.25 0 004.25 18h2.5A2.25 2.25 0 009 15.75v-2.5A2.25 2.25 0 006.75 11h-2.5zm9-9A2.25 2.25 0 0011 4.25v2.5A2.25 2.25 0 0013.25 9h2.5A2.25 2.25 0 0018 6.75v-2.5A2.25 2.25 0 0015.75 2h-2.5zm0 9A2.25 2.25 0 0011 13.25v2.5A2.25 2.25 0 0013.25 18h2.5A2.25 2.25 0 0018 15.75v-2.5A2.25 2.25 0 0015.75 11h-2.5z" clip-rule="evenodd" />
                  </svg> -->
                  <!-- <button type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-lg px-5 py-1 me-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none">Filter</button> -->
                </button>
                <button type="button" class="-m-2 ml-4 p-2 text-gray-400 hover:text-gray-500 sm:ml-6 lg:hidden">
                  <span class="sr-only">Filters</span>
                  <svg class="h-5 w-5" aria-hidden="true" viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd" d="M2.628 1.601C5.028 1.206 7.49 1 10 1s4.973.206 7.372.601a.75.75 0 01.628.74v2.288a2.25 2.25 0 01-.659 1.59l-4.682 4.683a2.25 2.25 0 00-.659 1.59v3.037c0 .684-.31 1.33-.844 1.757l-1.937 1.55A.75.75 0 018 18.25v-5.757a2.25 2.25 0 00-.659-1.591L2.659 6.22A2.25 2.25 0 012 4.629V2.34a.75.75 0 01.628-.74z" clip-rule="evenodd" />
                  </svg>
                </button>
              </div>
            </div>

            <section aria-labelledby="products-heading" class="pb-24 pt-6">
              <h2 id="products-heading" class="sr-only">Products</h2>

              <div class="">
                <!-- Filters -->
                <form action="" method="GET" class="hidden lg:block">


                  <div class="border-b border-gray-200 py-6">
                    <h3 class="-my-3 flow-root">
                      <!-- Expand/collapse section button -->
                      <button type="button" class="flex w-full items-center justify-between bg-white py-3 text-sm text-gray-400 hover:text-gray-500" aria-controls="filter-section-0" aria-expanded="false">
                        <span class="font-medium text-gray-900">category</span>
                        <span class="ml-6 flex items-center">
                          <!-- Expand icon, show/hide based on section open state. -->
                          <svg class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path d="M10.75 4.75a.75.75 0 00-1.5 0v4.5h-4.5a.75.75 0 000 1.5h4.5v4.5a.75.75 0 001.5 0v-4.5h4.5a.75.75 0 000-1.5h-4.5v-4.5z" />
                          </svg>
                          <!-- Collapse icon, show/hide based on section open state. -->
                          <svg class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                            <path fill-rule="evenodd" d="M4 10a.75.75 0 01.75-.75h10.5a.75.75 0 010 1.5H4.75A.75.75 0 014 10z" clip-rule="evenodd" />
                          </svg>
                        </span>
                      </button>
                    </h3>


                    <!-- Filter section, show/hide based on section state.  DESKTOP VIEW -->
                    <div class="pt-6" id="filter-section-0">
                      <div class="space-y-4">
                        <?php foreach ($fetchCategory as $category) { ?>

                          <div class="flex items-center">
                            <input id="filter-mobile-color-0" name="category[]" value="<?php echo $category['id'] ?>" type="checkbox" class="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500" <?php echo in_array($category['id'], $categories) ? 'checked' : 'jj' ?>>

                            <label for="filter-color-0" class="ml-3 text-md text-gray-600"><?php echo $category['name'] ?></label>
                          </div>
                        <?php } ?>

                        <!-- <button type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-lg px-14 py-2 me-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none">Filter</button> -->
                        <button type="submit" class="py-2 px-4  bg-indigo-600 hover:bg-indigo-700 focus:ring-indigo-500 focus:ring-offset-indigo-200 text-white w-full transition ease-in duration-200 text-center text-lg font-semibold shadow-md focus:outline-none focus:ring-2 focus:ring-offset-2  rounded-lg ">Filter</button>
                      </div>
                    </div>
                  </div>

                </form>

                <!-- Product grid -->
                <div class="lg:col-span-3">
                  <!-- Your content -->
                </div>
              </div>
            </section>
          </main>
        </div>
      </div>


    </div>
    <div class=" sm:col-span-9 sm:col-start-4 ">


      <!-- source: https://github.com/mfg888/Responsive-Tailwind-CSS-Grid/blob/main/index.html -->
      <button type="button" class="flex -m-2 mt-4 mx-12 p-2 text-2xl text-gray-400 hover:text-gray-500 sm:ml-6 sm:hidden">
        <span class="mr-4">Filters</span>
        <svg class="h-8 w-8" aria-hidden="true" viewBox="0 0 20 20" fill="currentColor">
          <path fill-rule="evenodd" d="M2.628 1.601C5.028 1.206 7.49 1 10 1s4.973.206 7.372.601a.75.75 0 01.628.74v2.288a2.25 2.25 0 01-.659 1.59l-4.682 4.683a2.25 2.25 0 00-.659 1.59v3.037c0 .684-.31 1.33-.844 1.757l-1.937 1.55A.75.75 0 018 18.25v-5.757a2.25 2.25 0 00-.659-1.591L2.659 6.22A2.25 2.25 0 012 4.629V2.34a.75.75 0 01.628-.74z" clip-rule="evenodd" />
        </svg>
      </button>

      <!-- ✅ Grid Section - Starts Here 👇 -->
      <section id="Projects" class="w-fit mx-auto grid grid-cols-1 lg:grid-cols-3 md:grid-cols-2 justify-items-center justify-center gap-y-8 gap-x-6 mt-10 mb-5">
        <?php foreach ($fetchProducts as $product) { ?>
          <!--   ✅ Product card - Starts Here 👇 -->
          <div class="product bg-white shadow-md rounded-xl duration-500 hover:scale-105 hover:shadow-xl">
            <a href="./list-product.php?page=<?php echo $page ?>&id=<?php echo $product['id'] ?><?php echo buildQueryString($_GET); ?>">
              <img src="./admin/assets/products/<?php echo $product['image_src'] ?>" alt="Product" class="h-80 w-full object-cover rounded-t-xl" />
              <div class="px-4 py-3">
                <span class="text-gray-400 mr-3 uppercase text-xs"><?php echo $product['category_name'] ?></span>
                <p class="text-2xl font-bold text-black block capitalize"><?php echo $product['productName'] ?></p>
                <div class="flex items-center">
                  <p class="text-lg font-semibold text-green-600 cursor-auto my-3"><?php echo $product['isNew'] ? 'New' : 'Used'; ?></p>
                  <span>
                    <p class="text-sm text-gray-600 cursor-auto ml-2 "><?php echo $product['poweredBy'] ?></p>
                  </span>
                  <!-- <div class="ml-auto"> -->
                  <!-- <i class="fa-solid fa-arrow-right"></i> -->
                  <i style="font-size: x-large;" class="hover:text-yellow-500 ml-auto fa-regular fa-circle-right"></i>
                  <!-- </div> -->
                </div>
              </div>
            </a>
          </div>
          <!--   🛑 Product card- Ends Here  -->
        <?php } ?>
      </section>

      <!-- 🛑 Grid Section - Ends Here -->
      <div class="flex justify-end my-6">
        <section aria-label="page-navigation">
          <ul class="flex list-style-none">
            <!-- Previous Page Link -->
            <li class="page-item <?php echo ($page <= 1) ? 'disabled' : ''; ?>">
              <a href="./products.php?page=<?php echo ($page <= 1) ? '1' : ($page - 1); ?><?php echo buildQueryString($_GET); ?>" class="relative block px-3 py-1.5 mr-3 text-base text-gray-700 transition-all duration-300 rounded-md dark:text-gray-400 hover:text-gray-100 hover:bg-blue-100">Previous</a>
            </li>

            <!-- Page Links -->
            <?php
            // Loop through pages and display ellipsis if needed
            for ($i = 1; $i <= $totalPages; $i++) :
              // Show first and last pages
              if ($i == 1 || $i == $totalPages || abs($i - $page) <= $numAdjacentPages) :
            ?>
                <li class="page-item <?php echo ($page == $i) ? 'active' : ''; ?>">
                  <a href="./products.php?page=<?php echo $i; ?><?php echo buildQueryString($_GET); ?>" class="relative block px-1.5 py-1 mr-2 text-base <?php echo ($page == $i) ? 'text-gray-100 bg-blue-600' : 'text-gray-700 dark:text-gray-400 hover:bg-blue-100'; ?> transition-all duration-300 rounded-md"><?php echo $i; ?></a>
                </li>
              <?php
              // Show ellipsis if not contiguous
              elseif ($i == 2 && abs($i - $page) > $numAdjacentPages + 1) :
              ?>
                <li class="page-item">
                  <span class="relative block px-3 py-1.5 mr-3 text-base text-gray-700 transition-all duration-300 rounded-md">...</span>
                </li>
            <?php
              endif;
            endfor;
            ?>

            <!-- Next Page Link -->
            <li class="page-item <?php echo ($page >= $totalPages) ? 'disabled' : ''; ?>">
              <a href="./products.php?page=<?php echo ($page >= $totalPages) ? $totalPages : ($page + 1); ?><?php echo buildQueryString($_GET); ?>" class="mr-8 relative block px-1 py-1 text-base text-gray-700 transition-all duration-300 dark:text-gray-400 dark:hover:bg-gray-700 hover:bg-blue-100 rounded-md">Next</a>
            </li>
          </ul>

          <!-- Pagination Info -->
          <?php
          $startRange = ($page - 1) * $limit + 1;
          $endRange = min($startRange + $limit - 1, $totalRecords);
          ?>
          <span class="ml-2 text-gray-700 dark:text-gray-400">
            Showing <span class="font-semibold text-gray-900 dark:text-white"><?php echo $startRange; ?></span> to <span class="font-semibold text-gray-900 dark:text-white"><?php echo $endRange; ?></span> of <span class="font-semibold text-gray-900 dark:text-white"><?php echo $totalRecords ?></span> Entries
          </span>
        </section>



      </div>

    </div>
  </div>


  <?php require_once './inc/footer.php' ?>

  <!-- Support Me 🙏🥰 -->
  <!-- <script src="https://storage.ko-fi.com/cdn/scripts/overlay-widget.js"></script>
  <script>
    kofiWidgetOverlay.draw('mohamedghulam', {
      'type': 'floating-chat',
      'floating-chat.donateButton.text': 'Support me',
      'floating-chat.donateButton.background-color': '#323842',
      'floating-chat.donateButton.text-color': '#fff'
    });
  </script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.0.0/flowbite.min.js"></script>

  <script src="./scripts/togglemenu.js"></script>
</body>

</html>