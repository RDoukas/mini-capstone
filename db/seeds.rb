# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# 

product = Product.new(name: "Coffee", price: 10, image_url: "https://www.google.com/search?q=coffee&rlz=1C5CHFA_enUS899US899&sxsrf=ALeKk033UpIZP2k_g0nZ_naUu_wjQiZfiA:1590598343216&source=lnms&tbm=isch&sa=X&ved=2ahUKEwit0-jJwNTpAhUQXM0KHZgADXkQ_AUoAnoECBkQBA&biw=640&bih=614&dpr=2#imgrc=Kqh2xJ1fV5GXoM", description: "Fresh roasted Arabica beans from Chile. Has a chocolate, nutty finish.")

product.save