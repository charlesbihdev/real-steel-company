$(document).ready(function () {
  // Function to fetch and display products based on selected categories
  function updateProductList() {
    var selectedCategories = $("input[name='category[]']:checked")
      .map(function () {
        return $(this).val();
      })
      .get();

    $.ajax({
      url: "./inc/get_products.php", // Replace with your actual API endpoint
      type: "POST",
      data: {
        categories: selectedCategories,
      },
      dataType: "json", // Expect JSON response
      success: function (response) {
        // Update product list on the page
        displayProducts(response.products);

        // Initialize pagination after updating products
        initializePagination(response.products);
      },
      error: function (xhr, status, error) {
        console.error(xhr.responseText);
      },
    });
  }

  // Function to display products on the page
  function displayProducts(products) {
    $("#data-container").empty();

    // Iterate over products and append to product list
    products.forEach(function (product) {
      // Append product HTML to product list container
      $("#data-container").append(
        `<div class="product bg-white shadow-md rounded-xl duration-500 hover:scale-105 hover:shadow-xl">
                    <a href="./list-product.php?page=<?php echo $currentPage ?>&id=${
                      product["id"]
                    }">
                        <img src="./admin/assets/products/${
                          product["image_src"]
                        }" alt="Product" class="h-80 w-full object-cover rounded-t-xl"> 
                        <div class="px-4 py-3">
                            <span class="text-gray-400 mr-3 uppercase text-xs">${
                              product["category_name"]
                            }</span>
                            <p class="text-2xl font-bold text-black block capitalize">${
                              product["productName"]
                            }</p>
                            <div class="flex items-center">
                                <p class="text-lg font-semibold text-green-600 cursor-auto my-3">${
                                  product["isNew"] ? "New" : "Used"
                                }</p>
                                <span>
                                    <p class="text-sm text-gray-600 cursor-auto ml-2 ">${
                                      product["poweredBy"]
                                    }</p>
                                </span>
                                <i style="font-size: x-large;" class="hover:text-yellow-500 ml-auto fa-regular fa-circle-right"></i>
                            </div>
                        </div>
                    </a>
                </div>`
      );
    });
  }

  // Function to initialize pagination
  function initializePagination(products) {
    $("#pagination").pagination({
      dataSource: products,
      pageSize: 9, // Set the number of items per page as needed
      callback: function (data, pagination) {
        // Update product list when page changes
        displayProducts(data);
      },
    });
  }

  // Event listener for checkbox changes
  $("input[name='category[]']").change(function () {
    // Reset pagination to the first page when category changes
    updateProductList();
  });

  // Initial product list update on page load
  updateProductList();
});
