
   
Supplier.create!([
  {
    name: "Garden Love",
    email: "GardenLove@gmail.com",
    phone_number: "7064045500"
  },
  {
    name: "Planters Paradise",
    email: "PParadise@hotmail.com",
    phone_number: "2019874321"
  },
  {
    name: "Happiness in a Pot",
    email: "HIAP@aol.com",
    phone_number: "6305437654"
  }
])



Product.create!([
  {name: "Burrito Succulent", price: "19.0",  description: "Long trailing succulents, perfect for hanging!", supplier_id: 1},
  {name: "Hanging Succulent Planter", price: "38.0", description: "Hanging succulent planter includes 4 pots, plants not included", supplier_id: 1},
  {name: "Aloe Vera Plant", price: "43.0", description: "Aloe Vera plant, 4 in nursery pot. Requires lots of sun and little water.",  supplier_id: 1},
  {name: "Tiny Cat Planter ", price: "14.0", description: "2 inch x 2 in x 1.7 inch. Great for Air Plants",  supplier_id: 1},
  {name: "Tradescantia Zebrina", price: "35.0", description: "Comes in a 6 in ceramic pot. Color options are: stone, indigo.",  supplier_id: 1},
  {name: "Golden Pothos 4", price: "12.0", description: "Comes in 4 in. nursey pot.",  supplier_id: 1},
  {name: "Triostart Stormanthe 4 in ", price: "16.0", description: "Variegated pink and white prayer plant. Comes in 4 in nursery pot.", supplier_id: 1},
  {name: "Burgundy Rubber Tree 4 in", price: "14.0",description: "Comes in 4 in nursery pot", supplier_id: 2},
  {name: "Monstera deliciosa, Swiss Cheese Plant", price: "50.0", description: "The Monstera Deliciosa or Split Leaf Philodendrum has been a favorite house plant for years – and with good reason. It’s wonderfully easy going, and freshens up any indoor corner. Comes in 10 in black planters pot", supplier_id: 1},
  {name: "Dracaena Dorado", price: "198.0", description: "The beautiful broadleaf Dracaena Dorado features dark green leaves with light chartreuse borders. Its beauty makes it a delightful indoor plant. But what makes this plant even more appealing are the emerald green canes in varying heights. Truly a ‘living’ conversation piece that will add a unique dimension to your indoor decor! Comes in 12 in ceramic pot.", supplier_id: 3},
  {name: "Dwarf Peach Tree", price: "99.99", description: "And because it’s a dwarf variety, you don't need a lot of room for it to perform year after year, especially since it’s self-fertile. You’ll have bushels of fresh peaches, right from your own backyard. And it’s easy to grow, accommodating most soil types, thriving in partial to full sun, and tolerating heat and humidity.", supplier_id: 2}
])



Image.create!([
  {url: "https://i.etsystatic.com/14339179/r/il/a836b0/2339127554/il_fullxfull.2339127554_soqc.jpg",
    product_id:  1},
  {url:"https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRCOuk7XUg_TyLsCNc4yO0dLrE_kVjZ878Xb5_8l5xJ0M2YKTJvlVCKZb1QniXcaMD8HpjWHr0&usqp=CAc",
    product_id:  2},
  {url:"https://i.etsystatic.com/11526084/r/il/72e6f5/927830884/il_fullxfull.927830884_jagz.jpg",
    product_id:  3},
  {url: "https://bloomscape.com/wp-content/uploads/2019/04/bloomscape_product-wandering-jew-stone-845x1024.jpg?ver=23771",
  product_id: 4},
  {url: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTGLERrscXj98jgydIFrt7srXqSrD5M713lQk2FkHU8K9nuZk2DCM6cJ3Bri82zk5TW8univRsH2QbfxlgvceuS9BF_PXvFNdErcqfC9pRU&usqp=CAE", 
  product_id: 5},
  {url:"https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQx2EdGKy_twC4PjvKRztSCnpXDzmhWVFCWLuy1o9U6qzVjdENGE8hlzZQBG-kEJIcwABhkxOCB5YIJyEXwYBixTdJ0M-b81aGY1cm2hnsBIPwNhVU5yHudHA&usqp=CAE", product_id: 6},
  {url: "https://bloomscape.com/wp-content/uploads/2019/12/bloomscape_product_dracaena-dorado-stone.jpg?ver=108433",
  product_id: 7},
  {url: "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSidCJ2oE0KOddxC5v9vflcvy_cncROUovTMWF24b-2O_W_OyzZYr5iXwM11Wfls9nF47BHxZwRFu0WX_YxEGsXfi92pBggooQbJKB-Wcc&usqp=CAE", 
  product_id: 8},
  {url: "https://www.plantvine.com/plants/Large-Monstera-Delic.jpg",
  product_id:9},
  {url: "https://bloomscape.com/wp-content/uploads/2019/05/bloomscape_product-fiddle-leaf-fig-stone-2-e1558203089576.jpg?ver=28682", product_id: 10}, 
  {url: "https://cdn.shopify.com/s/files/1/0059/8835/2052/products/Harvester-Peach-Tree-450w_large.jpg?v=1549690382", 
  product_id:11}
  ])

Category.create!([{name: "Plants"},
{name: "Pots"},
{name: "Misc."}])

ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 2},
  {product_id: 3, category_id: 1},
  {product_id: 4, category_id: 2},
  {product_id: 5, category_id: 1},
  {product_id: 6, category_id: 1},
  {product_id: 7, category_id: 1},
  {product_id: 8, category_id: 1},
  {product_id: 9, category_id: 1},
  {product_id: 10, category_id: 1},
  {product_id: 11, category_id: 1},

  ])


