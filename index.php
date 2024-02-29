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
  <link rel="stylesheet" href="./styles/style.css" />
</head>

<body>
  <div class="mandatory-scroll-snapping" dir="ltr">
    <section class="bg-black snap-child relative h-screen flex flex-col text-center text-white">
      <div class="blur-element video-docker absolute top-0 left-0 w-full h-full overflow-hidden">
        <video id="myVideo" class="min-w-full min-h-full absolute object-cover" src="./hero-video/hero-vid.mp4" type="video/mp4" autoplay muted loop></video>
      </div>
      <nav class="z-10 flex justify-between mt-10 text-2xl">
        <button data-collapse-toggle="mobile-menu-2" type="button" class="inline-flex items-center p-2 ml-1 text-sm text-gray-500 rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="mobile-menu-2" aria-expanded="true">
          <span class="sr-only">Open main menu</span>
          <!-- humburger icon -->
          <svg id="open-menu" class="w-12 h-10" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path>
          </svg>
          <!-- close icon -->
          <svg id="close-menu" class="!hidden w-12 h-10" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path>
          </svg>
        </button>
        <img class="mt-[-30px] sm:ml-10 logo" src="./icons/logo.png" />

        <div class="hidden sm:flex">
          <div class="relative nav-item">
            <p onmouseover="handleMouseOverFunctions('drop-menu', 'arrow1')" onmouseleave="hidedropdown('drop-menu')" id="product">
              <a href="./products.php"> Products </a>
              <span class="relative">
                <!-- <i class="fa-sharp fa-solid fa-angle-down"></i> -->
                <!-- <i id="arrow1" class="fa-sharp fa-solid fa-angle-down fa-fade"></i> -->
              </span>
            </p>
          </div>
          <div class="nav-item">
            <a href="./contact.php">
              Contact Us
            </a>
          </div>

          <div class="nav-item">
            <a href="./about.php"> About Us</a>
          </div>
        </div>

        <!-- <ul
            id="drop-menu"
            onmouseover="showdropdown('drop-menu')"
            onmouseleave="hidedropdown('drop-menu')"
            class="hidden pl-5 pt-16 absolute drop-down text-xl text-left z-10 w-50"
          >
            <li
              onmouseover="showdropdown('drop-sub-menu')"
              onmouseleave="hidedropdown('drop-sub-menu')"
              class="pr-10"
            >
              Lighte construction machine
              <span>
                <i id="arrow2" class="fa-sharp fa-solid fa-angle-down"></i>
              </span>
            </li>
            <li>Excavator</li>
            <li>Wheel Loader</li>
            <li>Bulldozer</li>
            <li>Dumpers and Trucks</li>
            <li>Backhoe</li>
            <li>Skid Loader</li>
            <li>Rollers</li>
            <li>Concrete Mixers</li>
            <li>Concrete Pumps</li>
          </ul> -->

        <!-- <ul
            id="drop-sub-menu"
            onmouseover="showdropdown('drop-sub-menu')"
            onmouseleave="hidedropdown('drop-sub-menu')"
            class="hidden pt-20 absolute sub-drop-down text-xl text-left z-10 w-50"
          >
            <li>tractors</li>
            <li>block machines</li>
            <li>road construction machines</li>
            <li>mini excavator</li>
            <li>lighting tower</li>
            <li>lifting equipment</li>
            <li>scaffolding and wood</li>
            <li>Air conditions</li>
            <li>solar system</li>
            <li>generators</li>
            <li>doors</li>
          </ul> -->
      </nav>
      <div class="hidden bg-white z-10 items-center justify-between w-full" id="mobile-menu-2">
        <ul class="flex flex-col mt-4 font-medium text-center">
          <li>
            <a href="#" class="block py-2 pl-3 pr-4 text-white bg-yellow-400 rounded dark:text-white" aria-current="page">Home</a>
          </li>
          <li>
            <a href="./products.php" class="block py-2 pl-3 pr-4 text-gray-700 border-b border-gray-100 hover:bg-gray-50 dark:text-gray-400 lg:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white lg:dark:hover:bg-transparent dark:border-gray-700">Products</a>
          </li>
          <li>
            <a href="./contact.php" class="block py-2 pl-3 pr-4 text-gray-700 border-b border-gray-100 hover:bg-gray-50 dark:text-gray-400 lg:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white lg:dark:hover:bg-transparent dark:border-gray-700">Contact Us</a>
          </li>
          <li>
            <a href="./about.php" class="block py-2 pl-3 pr-4 text-gray-700 border-b border-gray-100 hover:bg-gray-50 dark:text-gray-400 lg:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white lg:dark:hover:bg-transparent dark:border-gray-700">About Us</a>
          </li>
        </ul>
      </div>
      <div class="relative blur-element video-content space-y-2 my-auto">
        <h1 class="font-bold text-7xl text-yellow-500">Real Steel co. Ltd</h1>
        <h3 class="font-light text-4xl my-auto mb-10">
          Everything about mining and construction
        </h3>
        <a href="./products.php">
          <button class="!mt-10 text-xl text-gray-900 bg-gradient-to-r from-teal-200 to-lime-200 hover:bg-gradient-to-l hover:from-teal-200 hover:to-lime-200 focus:ring-4 focus:outline-none focus:ring-lime-200 dark:focus:ring-teal-700 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2">
            Explore our Products
          </button>
        </a>
        <img width="80" height="80" src="./icons/pause.png" alt="pause" id="toggleButton" />
      </div>
    </section>

    <!-- about us -->
    <section class="bg-white dark:bg-gray-900">
      <div class="gap-16 items-center py-8 px-4 mx-auto max-w-screen-xl lg:grid lg:grid-cols-2 lg:py-16 lg:px-6">
        <div class="font-light text-gray-500 sm:text-lg">
          <!-- <h1
              class="mb-4 text-6xl tracking-tight font-extrabold text-white dark:text-white"
            >
              About Real Steel co. Ltd
            </h1> -->
          <h2 class="mb-4 text-6xl tracking-tight font-extrabold text-gray-900 dark:text-white">
            <span class="text-yellow-500"> About </span> Real Steel co. Ltd
          </h2>
          <p class="mb-4 text-2xl">
            Real steel is a specialist in the supply of mining, construction,
            road construction equipment and spare parts.
          </p>
          <p class="text-2xl">
            Solar systems and generators , with real warranty and after sale
            service We are always trying to make buying easier for the
            customer, by providing pro sales team .
          </p>
        </div>
        <div class="grid grid-cols-2 gap-4 mt-8">
          <img class="about-img w-full rounded-lg" src="./homepage-images/img3.jpg" alt="office content 1" />
          <img class="about-img mt-4 w-full lg:mt-10 rounded-lg" src="./homepage-images/img2.jpg" alt="office content 2" />
        </div>
      </div>
    </section>
    <!-- Container for demo purpose -->

    <div class="grid gap-4 bg-#1e293b">
      <h1 class="my-12 text-6xl tracking-tight font-extrabold text-white text-center">
        Mini <span class="text-yellow-500"> Gallery </span>
      </h1>
      <div>
        <img class="h-50 rounded-lg gallery-img" src="./home-images/cover photo1.jpg" alt="" />
      </div>
      <div class="gallery-sm-div grid sm:grid-cols-5 gap-4">
        <div>
          <img class="gallery-sm-img max-w-full rounded-lg" src="./home-images/mortar mixer.jpg" alt="" />
        </div>
        <div>
          <img class="gallery-sm-img max-w-full rounded-lg" src="./home-images/scarfold.jpg" alt="" />
        </div>
        <div>
          <img class="gallery-sm-img max-w-full rounded-lg" src="./home-images/white gen.jpg" alt="" />
        </div>
        <div>
          <img class="gallery-sm-img max-w-full rounded-lg" src="./home-images/blue gen.jpg" alt="" />
        </div>
        <div>
          <img class="gallery-sm-img max-w-full rounded-lg" src="./home-images/small vehicle.jpg" alt="" />
        </div>
      </div>
    </div>

    <!-- del testimonial -->
    <section class="bg-white sm:pb-12 my-10 dark:bg-gray-800 dark:text-gray-100">
      <div class="container flex flex-col items-center mx-auto md:p-10 md:px-12">
        <h1 class="text-6xl font-semibold leading text-center text-yellow-500 px-10 ss-mt">
          What our customers are saying about us
        </h1>
      </div>
      <div class="container flex flex-col items-center justify-center mx-auto lg:flex-row lg:flex-wrap lg:justify-evenly lg:px-10">
        <div class="flex flex-col max-w-sm mx-4 my-6 shadow-lg">
          <div class="px-4 py-12 rounded-t-lg sm:px-8 md:px-12 dark:bg-gray-900">
            <p class="relative px-6 py-1 text-lg italic text-center dark:text-gray-100">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" fill="currentColor" class="w-8 h-8 dark:text-violet-400">
                <path d="M232,246.857V16H16V416H54.4ZM48,48H200V233.143L48,377.905Z"></path>
                <path d="M280,416h38.4L496,246.857V16H280ZM312,48H464V233.143L312,377.905Z"></path>
              </svg>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
              Voluptatibus quibusdam, eligendi exercitationem molestias
              possimus facere.
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" fill="currentColor" class="absolute right-0 w-8 h-8 dark:text-violet-400">
                <path d="M280,185.143V416H496V16H457.6ZM464,384H312V198.857L464,54.1Z"></path>
                <path d="M232,16H193.6L16,185.143V416H232ZM200,384H48V198.857L200,54.1Z"></path>
              </svg>
            </p>
          </div>
          <div class="flex flex-col items-center justify-center p-8 rounded-b-lg dark:bg-yellow-500 dark:text-gray-900">
            <img src="https://source.unsplash.com/50x50/?portrait?1" alt="" class="w-16 h-16 mb-2 -mt-16 bg-center bg-cover rounded-full dark:bg-gray-500 dark:bg-gray-700" />
            <p class="text-xl font-semibold leadi">Distinctio Animi</p>
            <p class="text-sm uppercase">Aliquam illum</p>
          </div>
        </div>
        <div class="flex flex-col max-w-sm mx-4 my-6 shadow-lg">
          <div class="px-4 py-12 rounded-t-lg sm:px-8 md:px-12 dark:bg-gray-900">
            <p class="relative px-6 py-1 text-lg italic text-center dark:text-gray-100">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" fill="currentColor" class="w-8 h-8 dark:text-violet-400">
                <path d="M232,246.857V16H16V416H54.4ZM48,48H200V233.143L48,377.905Z"></path>
                <path d="M280,416h38.4L496,246.857V16H280ZM312,48H464V233.143L312,377.905Z"></path>
              </svg>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
              Voluptatibus quibusdam, eligendi exercitationem molestias
              possimus facere.
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" fill="currentColor" class="absolute right-0 w-8 h-8 dark:text-violet-400">
                <path d="M280,185.143V416H496V16H457.6ZM464,384H312V198.857L464,54.1Z"></path>
                <path d="M232,16H193.6L16,185.143V416H232ZM200,384H48V198.857L200,54.1Z"></path>
              </svg>
            </p>
          </div>
          <div class="flex flex-col items-center justify-center p-8 rounded-b-lg dark:bg-yellow-500 dark:text-gray-900">
            <img src="https://source.unsplash.com/50x50/?portrait?2" alt="" class="w-16 h-16 mb-2 -mt-16 bg-center bg-cover rounded-full dark:bg-gray-500 dark:bg-gray-700" />
            <p class="text-xl font-semibold leadi">Distinctio Animi</p>
            <p class="text-sm uppercase">Aliquam illum</p>
          </div>
        </div>
        <div class="flex flex-col max-w-sm mx-4 my-6 shadow-lg">
          <div class="px-4 py-12 rounded-t-lg sm:px-8 md:px-12 dark:bg-gray-900">
            <p class="relative px-6 py-1 text-lg italic text-center dark:text-gray-100">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" fill="currentColor" class="w-8 h-8 dark:text-violet-400">
                <path d="M232,246.857V16H16V416H54.4ZM48,48H200V233.143L48,377.905Z"></path>
                <path d="M280,416h38.4L496,246.857V16H280ZM312,48H464V233.143L312,377.905Z"></path>
              </svg>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
              Voluptatibus quibusdam, eligendi exercitationem molestias
              possimus facere.
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" fill="currentColor" class="absolute right-0 w-8 h-8 dark:text-violet-400">
                <path d="M280,185.143V416H496V16H457.6ZM464,384H312V198.857L464,54.1Z"></path>
                <path d="M232,16H193.6L16,185.143V416H232ZM200,384H48V198.857L200,54.1Z"></path>
              </svg>
            </p>
          </div>
          <div class="flex flex-col items-center justify-center p-8 rounded-b-lg dark:bg-yellow-500 dark:text-gray-900">
            <img src="https://source.unsplash.com/50x50/?portrait?3" alt="" class="w-16 h-16 mb-2 -mt-16 bg-center bg-cover rounded-full dark:bg-gray-500 dark:bg-gray-700" />
            <p class="text-xl font-semibold leadi">Distinctio Animi</p>
            <p class="text-sm uppercase">Aliquam illum</p>
          </div>
        </div>
        <div class="flex flex-col max-w-sm mx-4 my-6 shadow-lg">
          <div class="px-4 py-12 rounded-t-lg sm:px-8 md:px-12 dark:bg-gray-900">
            <p class="relative px-6 py-1 text-lg italic text-center dark:text-gray-100">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" fill="currentColor" class="w-8 h-8 dark:text-violet-400">
                <path d="M232,246.857V16H16V416H54.4ZM48,48H200V233.143L48,377.905Z"></path>
                <path d="M280,416h38.4L496,246.857V16H280ZM312,48H464V233.143L312,377.905Z"></path>
              </svg>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
              Voluptatibus quibusdam, eligendi exercitationem molestias
              possimus facere.
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512" fill="currentColor" class="absolute right-0 w-8 h-8 dark:text-violet-400">
                <path d="M280,185.143V416H496V16H457.6ZM464,384H312V198.857L464,54.1Z"></path>
                <path d="M232,16H193.6L16,185.143V416H232ZM200,384H48V198.857L200,54.1Z"></path>
              </svg>
            </p>
          </div>
          <div class="flex flex-col items-center justify-center p-8 rounded-b-lg dark:bg-yellow-500 dark:text-gray-900">
            <img src="https://source.unsplash.com/50x50/?portrait?4" alt="" class="w-16 h-16 mb-2 -mt-16 bg-center bg-cover rounded-full dark:bg-gray-500 dark:bg-gray-700" />
            <p class="text-xl font-semibold leadi">Distinctio Animi</p>
            <p class="text-sm uppercase">Aliquam illum</p>
          </div>
        </div>
      </div>
    </section>
    <!-- del testimonial  -->

    <?php require_once './inc/footer.php' ?>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.0.0/flowbite.min.js"></script>
    <script src="https://unpkg.com/flowbite@1.4.1/dist/flowbite.js"></script>
    <script src="./scripts/togglemenu.js"></script>
</body>

</html>
<!-- forked from: https://codepen.io/cuonoj/pen/JjPmMaB -->