<?php

require_once('./admin/database/config.php');
require_once('./admin/inc/auxilliaries.php');

$Products = new Admin($pdo, "products");
$ProductsImg = new Admin($pdo, "productimages");


if (isset($_GET['id']) && $_GET['page']) {
    $id = $_GET['id'];
    $page = $_GET['page'];
}

$fetchProduct = $Products->read('id', $id)[0];
$fetchImages = $ProductsImg->read('productId', $id);
$firstImg = $fetchImages[0]['src'];

// print_r($fetchProduct);
// print_r($fetchImages);
// print_r($fetchProducts);
// if (isset($_POST['submit'])) {
//   $quote = new Admin($pdo, "tbl_quote");


//   $firstname = $_POST['firstname'];
//   $details = $_POST['details'];
//   $type = $_POST['type'];
//   $phone = $_POST['phone'];
//   $email = $_POST['email'];


//   $quoteInfo = [
//     'firstname' => $firstname,
//     'details' => $details,
//     'type' => $type,
//     'phone' => $phone,
//     'email' => $email,
//   ];

//   if ($quote->create($quoteInfo)) {
//     $message = 'Quote submitted Successfully';
//   }
// }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Real Steel co. Ltd</title>

    <!-- <link rel="manifest" href="./favicon/site.webmanifest" /> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- flowbite css  -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/flowbite.min.css" rel="stylesheet" />
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="./footer.css" />
    <link href="https://fonts.googleapis.com/css?family=Barlow Condensed" rel="stylesheet" />
    <!-- <link rel="stylesheet" href="./style.css" /> -->
    <link rel="stylesheet" href="./products.css" />
    <style>
        .product {
            width: 260px;
        }
    </style>
</head>

<body>
    <section class="nav-hero">
        <nav class="z-10 flex justify-around text-2xl">
            <a href="./index.html"><img class="mb-3" src="./icons/logo.png" height="130px" width="180px" /></a>
            <div class="flex">
                <div class="nav-item pt-10">
                    <p onmouseover="handleMouseOverFunctions('drop-menu', 'arrow1')" onmouseleave="hidedropdown('drop-menu')" id="product">
                        Products
                        <span class="relative">
                            <!-- <i class="fa-sharp fa-solid fa-angle-down"></i> -->
                            <i id="arrow1" class="fa-sharp fa-solid fa-angle-down fa-fade"></i>
                        </span>
                    </p>
                </div>
                <div class="nav-item pt-10">Contact Us</div>

                <div class="nav-item pt-10">
                    <a href="./about.html"> About Us</a>
                </div>
            </div>
            <div class="pt-10">
                My List
                <span>
                    <img class="inline" src="./icons/icons8-list-64.png" style="height: 23px; width: 20px" />
                </span>
            </div>

            <ul id="drop-menu" onmouseover="showdropdown('drop-menu')" onmouseleave="hidedropdown('drop-menu')" class="hidden pl-5 pt-16 absolute drop-down text-xl text-left z-10 w-50">
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
            </ul>

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
            </ul>
        </nav>

        <h1 class="font-extrabold text-7xl text-center pt-36 text-white">Products Listing</h1>
    </section>
    <section class="flex flex-wrap mx-6 mt-6 justify-between">
        <a href="./products.php?page=<?php echo $page ?>">
            <button type="button" class="w-full flex items-center justify-center w-1/2 px-5 py-2 text-lg text-gray-700 transition-colors duration-200 bg-gray-300 hover:bg-gray-400 border rounded-lg gap-x-2 sm:w-auto dark:hover:bg-gray-800 dark:bg-gray-900 hover:bg-gray-100 dark:text-gray-200 dark:border-gray-700">
                <svg class="w-5 h-5 rtl:rotate-180" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M6.75 15.75L3 12m0 0l3.75-3.75M3 12h18" />
                </svg>
                <span>Go back</span>
            </button>
        </a>

        <a href="https://wa.link/drtn9l" target="_blank">
            <i class="text-5xl mr-3 fa-brands fa-whatsapp"></i>
            <span class="text-xl mr-10">+233543670506</span>
        </a>

    </section>

    <section class="overflow-hidden bg-white py-6 font-poppins dark:bg-gray-800">
        <div class="max-w-6xl px-4 py-4 mx-auto lg:py-8 md:px-6">
            <div class="flex flex-wrap -mx-4">
                <div class="w-full px-4 md:w-1/2 ">
                    <div class="sticky top-0 z-50 overflow-hidden ">
                        <div class="relative mb-6 lg:mb-10 lg:h-2/4 ">
                            <img id="thumbnail" src="./admin/assets/products/<?php echo $firstImg ?>" alt="" class="object-cover w-full lg:h-full ">
                        </div>
                        <div class="flex-wrap hidden md:flex ">
                            <?php foreach ($fetchImages as $image) { ?>
                                <div class="w-1/2 p-2 sm:w-1/4">
                                    <a href="#" class="block border border-blue-300 dark:border-transparent dark:hover:border-blue-300 hover:border-blue-300">
                                        <img src="./admin/assets/products/<?php echo $image['src'] ?>" alt="" class="object-cover w-full lg:h-20">
                                    </a>
                                </div>
                            <?php } ?>
                            <!-- <div class="w-1/2 p-2 sm:w-1/4">
                                <a href="#" class="block border border-transparent dark:border-transparent dark:hover:border-blue-300 hover:border-blue-300">
                                    <img src="https://i.postimg.cc/PqYpFTfy/pexels-melvin-buezo-2529148.jpg" alt="" class="object-cover w-full lg:h-20">
                                </a>
                            </div>
                            <div class="w-1/2 p-2 sm:w-1/4">
                                <a href="#" class="block border border-transparent dark:border-transparent dark:hover:border-blue-300 hover:border-blue-300">
                                    <img src="https://i.postimg.cc/PqYpFTfy/pexels-melvin-buezo-2529148.jpg" alt="" class="object-cover w-full lg:h-20">
                                </a>
                            </div>
                            <div class="w-1/2 p-2 sm:w-1/4">
                                <a href="#" class="block border border-transparent dark:border-transparent dark:hover:border-blue-300 hover:border-blue-300">
                                    <img src="https://i.postimg.cc/PqYpFTfy/pexels-melvin-buezo-2529148.jpg" alt="" class="object-cover w-full lg:h-20">
                                </a>
                            </div> -->
                        </div>
                    </div>
                </div>
                <div class="w-full px-4 md:w-1/2 ">
                    <div class="lg:pl-20">
                        <div class="mb-8 ">
                            <span class="text-lg font-medium text-rose-500 dark:text-rose-200"><?php echo $fetchProduct['isNew'] ? 'New' : 'Used';
                                                                                                ?></span>
                            <h2 class="max-w-xl mt-2 mb-6 text-2xl font-bold dark:text-gray-400 md:text-4xl">
                                <?php echo $fetchProduct['productName'];
                                ?></h2>
                            <div class="flex items-center mb-6">
                                <ul class="flex mr-2">
                                    <li>
                                        <a href="#">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star " viewBox="0 0 16 16">
                                                <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z" />
                                            </svg>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star " viewBox="0 0 16 16">
                                                <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z" />
                                            </svg>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star " viewBox="0 0 16 16">
                                                <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z" />
                                            </svg>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="w-4 mr-1 text-red-500 dark:text-gray-400 bi bi-star " viewBox="0 0 16 16">
                                                <path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z" />
                                            </svg>
                                        </a>
                                    </li>
                                </ul>
                                <p class="text-xs dark:text-gray-400 ">(2 customer reviews)</p>
                            </div>

                            <!-- <p class="text-green-600 dark:text-green-300 ">In stock</p> -->
                        </div>
                        <div class="flex items-center mb-8">
                            <h2 class="w-30 mr-6 text-xl font-bold dark:text-gray-400">
                                Category:</h2>
                            <div class="flex flex-wrap -mx-2 text-xl text-yellow-500">
                                <h2>
                                    <?php echo $fetchProduct['category'];
                                    ?>
                                </h2>
                            </div>
                        </div>

                        <?php if (!empty($fetchProduct['brand'])) : ?>
                            <div class="flex items-center mb-8">
                                <h2 class="w-30 mr-6 text-xl font-bold dark:text-gray-400">
                                    Brand:
                                </h2>
                                <div class="flex flex-wrap -mx-2 text-xl text-yellow-500">
                                    <h2>
                                        <?php echo $fetchProduct['brand']; ?>
                                    </h2>
                                </div>
                            </div>
                        <?php endif; ?>


                        <div class="flex items-center mb-8">
                            <h2 class="w-30 mr-6 text-xl font-bold dark:text-gray-400">
                                Powered By:</h2>
                            <div class="flex flex-wrap -mx-2 text-xl text-yellow-500">
                                <h2>
                                    <?php echo $fetchProduct['poweredBy'];
                                    ?>
                                </h2>
                            </div>
                        </div>


                        <?php if (!empty($fetchProduct['drumCapacity'])) : ?>
                            <div class="flex items-center mb-8">
                                <h2 class="w-30 mr-6 text-xl font-bold dark:text-gray-400">
                                    Drum Capacity:
                                </h2>
                                <div class="flex flex-wrap -mx-2 text-xl text-yellow-500">
                                    <h2>
                                        <?php echo $fetchProduct['drumCapacity']; ?> ltr
                                    </h2>
                                </div>
                            </div>
                        <?php endif; ?>

                        <?php if (!empty($fetchProduct['operatingWeight'])) : ?>
                            <div class="flex items-center mb-8">
                                <h2 class="w-30 mr-6 text-xl font-bold dark:text-gray-400">
                                    Operating Weight:
                                </h2>
                                <div class="flex flex-wrap -mx-2 text-xl text-yellow-500">
                                    <h2>
                                        <?php echo $fetchProduct['operatingWeight']; ?> Kg
                                    </h2>
                                </div>
                            </div>
                        <?php endif; ?>

                        <?php if (!empty($fetchProduct['description'])) : ?>

                            <div class=" mb-8 ">
                                <label for="" class="w-full text-xl font-semibold text-gray-700 dark:text-gray-400">Description:</label>
                                <div class="text-xl text-yellow-500 relative flex flex-row w-full mb-8 mt-4 bg-transparent rounded-lg">
                                    <h2>
                                        <?php echo $fetchProduct['description'];
                                        ?>
                                    </h2>
                                </div>
                            <?php endif; ?>

                            <div class="flex flex-wrap items-center -mx-4 ">
                                <!-- <div class="w-full px-4 mb-4 lg:w-1/2 lg:mb-0">
                                    <button class="flex items-center justify-center w-full p-4 text-xl text-yellow-600 border border-yellow-500 hover:border-0 rounded-md dark:text-gray-200 dark:border-blue-600 hover:bg-yellow-600 hover:text-gray-100 dark:bg-blue-600 dark:hover:bg-blue-700 dark:hover:border-blue-700 dark:hover:text-gray-300">
                                        Add to List
                                    </button>
                                </div> -->
                                <div class="w-full px-4 mb-4 lg:mb-0 lg:w-1/2">
                                    <button type="button" data-modal-target="authentication-modal" data-modal-toggle="authentication-modal" id="quote-bttn" class="focus:ring-4  focus:ring-yellow-300 flex items-center justify-center w-full text-xl p-4 text-white border bg-yellow-600 rounded-md dark:text-gray-200 dark:border-blue-600 hover:bg-yellow-700 dark:bg-blue-600 dark:hover:bg-blue-700 dark:hover:border-blue-700 dark:hover:text-gray-300">
                                        Get Instant Quote
                                    </button>
                                </div>

                                <!-- Main modal -->
                                <div id="authentication-modal" tabindex="-1" aria-hidden="true" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
                                    <div class="relative p-4 w-full max-w-md max-h-full">
                                        <!-- Modal content -->
                                        <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
                                            <!-- Modal header -->
                                            <div class="flex items-center justify-between p-4 md:p-5 border-b rounded-t dark:border-gray-600">
                                                <h3 class="text-xl font-semibold text-yellow-500 dark:text-white">
                                                    WE NEED SOME INFO ABOUT YOU
                                                </h3>

                                                <button type="button" class="end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white" data-modal-hide="authentication-modal">
                                                    <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                                                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6" />
                                                    </svg>
                                                    <span class="sr-only">Close modal</span>
                                                </button>
                                            </div>
                                            <h2 class="text-md text-center">
                                                Please fill the form to request your non-binding quote
                                            </h2>
                                            <!-- Modal body -->
                                            <div class="p-4 md:p-5">
                                                <form class="space-y-4" action="#" method="POST">
                                                    <div>
                                                        <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">First Name*</label>
                                                        <input type="text" name="first_name" id="first_name" placeholder="Your first name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required />
                                                    </div>
                                                    <div>
                                                        <label for="last_name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Last Name*</label>
                                                        <input type="text" name="last_name" id="last_name" placeholder="Your last name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required />
                                                    </div>
                                                    <div>
                                                        <label for="company_name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Company Name*</label>
                                                        <input type="text" name="company_name" id="company_name" placeholder="Your company name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required />
                                                    </div>
                                                    <div>
                                                        <label for="address" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Address*</label>
                                                        <input type="text" name="address" id="address" placeholder="Your address" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required />
                                                    </div>
                                                    <div>
                                                        <label for="country" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Country*</label>
                                                        <input type="text" name="country" id="country" placeholder="Your country" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required />
                                                    </div>
                                                    <div>
                                                        <label for="industry" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Industry*</label>
                                                        <input type="text" name="industry" id="industry" placeholder="Your industry" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required />
                                                    </div>
                                                    <div>
                                                        <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your Email Address*</label>
                                                        <input type="email" name="email" id="email" placeholder="name@company.com" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required />
                                                    </div>
                                                    <div>
                                                        <label for="phone_number" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Phone number*</label>
                                                        <input type="tel" name="phone_number" id="phone_number" placeholder="Your phone number" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white" required />
                                                    </div>
                                                    <div>
                                                        <label for="message" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your Message (optional)</label>
                                                        <textarea name="message" id="message" placeholder="Your message" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-600 dark:border-gray-500 dark:placeholder-gray-400 dark:text-white"></textarea>
                                                    </div>
                                                    <button type="submit" class="w-full text-white bg-yellow-500 hover:bg-yellow-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                                                        Send me a non-binding quote
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </div>
                    </div>
                </div>
            </div>
    </section>


    <div class="snap-child footer text-lg bg-#1e293b flex py-10 text-white justify-evenly flex-wrap">
        <ul class="list-with-square">
            <h1 class="font-bold text-xl mb-6">Quick Links</h1>
            <hr class="mb-2" />
            <li>About Us</li>
            <li>Contact Us</li>
            <li>Products</li>
        </ul>

        <ul>
            <h1 class="font-bold text-xl mb-6">Follow Real Steel co. Ltd</h1>
            <hr class="mb-2" />
            <ul class="flex hover:text-#1e293b w-100 justify-between text-4xl">
                <li>
                    <a href="https://www.facebook.com/profile.php? id=100082998979273&mibextid=ZbWKwL" target="_blank">
                        <i class="fa-brands fa-facebook"></i></a>
                </li>
                <li>
                    <a href="https://www.linkedin.com/in/samer-kamleh-9b14ba20b" target="_blank">
                        <i class="fa-brands fa-linkedin"></i>
                    </a>
                </li>
                <li>
                    <a href="https://www.instagram.com/real_steel.co.ltd/" target="_blank">
                        <i class="fa-brands fa-instagram"></i>
                    </a>
                </li>

                <li>
                    <a href="mailto:sales@realsteelcoltd.com">
                        <i class="fa-solid fa-envelope"></i>
                    </a>
                </li>
                <li>
                    <a href="https://wa.link/drtn9l" target="_blank">
                        <i class=" fa-brands fa-whatsapp"></i>
                    </a>
                </li>
            </ul>
        </ul>

        <ul>
            <h1 class="font-bold text-xl mb-6 text-justify">About Us</h1>
            <hr class="mb-2" />
            <p>
                Real Steel Company Limited Is commited to providing quality plants
                and machinery at an affordable cost. Our machinery can be puchased
                in Ghana, Guinea and Sudan.
            </p>
        </ul>
    </div>

    <footer class="justify-between flex px-10 border-white border-2 border-x-0 font-bold text-white text-center py-5">
        <p class="mx-2 text-yellow-500">&copy; 2024 REAL STEEL COMPANY LIMITED</p>
        <span class="">
            DEVELOPED BY

            <a class="text-yellow-500" target="_blank" href="https://linktr.ee/charlesbihdev">CHARLES OWUSU BIH
            </a>
        </span>
    </footer>
    </div>
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
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.0.0/flowbite.min.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.3.0/flowbite.min.js"></script>

    <script src="./scripts/togglemenu.js"></script>
    <script>
        // Get the authentication modal element
        const modalElement = document.getElementById("authentication-modal");

        // Get the thumbnail image element
        const thumbnailImage = document.getElementById("thumbnail");

        // Function to hide the thumbnail image
        const hideThumbnail = () => {
            if (thumbnailImage) {
                thumbnailImage.style.display = "none";
            }
        };

        // Function to show the thumbnail image
        const showThumbnail = () => {
            if (thumbnailImage) {
                thumbnailImage.style.display = "block";
            }
        };

        // Function to handle changes to the aria-modal attribute
        const handleAriaModalChange = (mutationsList, observer) => {
            for (const mutation of mutationsList) {
                if (mutation.attributeName === "aria-modal") {
                    const ariaModalValue = modalElement.getAttribute("aria-modal");
                    if (ariaModalValue === "true") {
                        hideThumbnail();
                    } else {
                        showThumbnail();
                    }
                }
            }
        };

        // Create a new MutationObserver
        const observer = new MutationObserver(handleAriaModalChange);

        // Start observing changes to the attributes of the modal element
        if (modalElement) {
            observer.observe(modalElement, {
                attributes: true
            });
        }
    </script>
</body>

</html>