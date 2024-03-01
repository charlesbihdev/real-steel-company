<section class="nav-hero">
    <nav class="z-10 flex justify-between sm:justify-around text-2xl">
        <button data-collapse-toggle="mobile-menu-2" type="button" class="inline-flex items-center p-2 text-sm text-white rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600" aria-controls="mobile-menu-2" aria-expanded="true">
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

        <a href="./index.php">
            <img class="mb-3 logo" src="./icons/logo.png" />

        </a>

        <div class="hidden sm:flex">
            <div class="nav-item pt-10 <?php echo $cur_page == 'products' ? "active" : "" ?>">
                <p id="product">
                    <a href="./products.php">Products</a>
                    <!-- <span class="relative">
            <i id="arrow1" class="fa-sharp fa-solid fa-angle-down fa-fade"></i>
            </span> -->
                </p>
            </div>
            <div class="nav-item pt-10 <?php echo $cur_page == 'contact' ? "active" : "" ?>"><a href="./contact.php">Contact Us</a></div>

            <div class="nav-item pt-10 <?php echo $cur_page == 'about' ? "active" : "" ?>">
                <a href="./about.php"> About Us</a>
            </div>
        </div>


        <!-- <ul id="drop-menu" onmouseover="showdropdown('drop-menu')" onmouseleave="hidedropdown('drop-menu')" class="hidden pl-5 pt-16 absolute drop-down text-xl text-left z-10 w-50">
        <li onmouseover="showdropdown('drop-sub-menu')" onmouseleave="hidedropdown('drop-sub-menu')" class="pr-10">
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
        <!-- 
      <ul id="drop-sub-menu" onmouseover="showdropdown('drop-sub-menu')" onmouseleave="hidedropdown('drop-sub-menu')" class="hidden pt-20 absolute sub-drop-down text-xl text-left z-10 w-50">
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
        <ul class="flex flex-col font-medium text-xl text-center">
            <li>
                <a href="./index.php" class="block py-2 pl-3 pr-4 text-gray-700  <?php echo $cur_page == 'index' ? "bg-yellow-400 text-white" : "" ?>  rounded dark:text-white" aria-current="page">Home</a>
            </li>
            <li>
                <a href="./products.php" class="block py-2 pl-3 pr-4 text-gray-700 <?php echo $cur_page == 'products' ? "bg-yellow-400 text-white" : "" ?>  border-b border-gray-100 hover:bg-gray-50 dark:text-gray-400 lg:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white lg:dark:hover:bg-transparent dark:border-gray-700">Products</a>
            </li>
            <li>
                <a href="./contact.php" class="block py-2 pl-3 pr-4 text-gray-700 <?php echo $cur_page == 'contact' ? "bg-yellow-400 text-white" : "" ?>  border-b border-gray-100 hover:bg-gray-50 dark:text-gray-400 lg:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white lg:dark:hover:bg-transparent dark:border-gray-700">Contact Us</a>
            </li>
            <li>
                <a href="./about.php" class="block py-2 pl-3 pr-4 text-gray-700 <?php echo $cur_page == 'about' ? "bg-yellow-400 text-white" : "" ?>  border-b border-gray-100 hover:bg-gray-50 dark:text-gray-400 lg:dark:hover:text-white dark:hover:bg-gray-700 dark:hover:text-white lg:dark:hover:bg-transparent dark:border-gray-700">About Us</a>
            </li>
        </ul>
    </div>