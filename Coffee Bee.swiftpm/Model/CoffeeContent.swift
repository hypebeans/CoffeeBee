//
//  CoffeeContent.swift
//  Coffee Bee
//
//  Created by Jonathan Budiman on 2024/02/23.
//

import SwiftUI

let CoffeeDetails : [Page] = [espresso, doppio, americano, cappuccino, latte, mocha, cortado, flatWhite, macchiato, conPanna, affogato, irishCoffee]

enum CoffeeViews {
    case espressoView
    case doppioView
    case americanoView
    case cappuccinoView
    case latteView
    case mochaView
    case cortadoView
    case flatWhiteView
    case macchiatoView
    case conPannaView
    case affogatoView
    case irishCoffeeView
}

//func createCoffee(from view: CoffeeViews) -> Coffee {
//    switch view {
//    case .espressoView:
//        return Coffee(
//            water: LiquidAmount(0),
//            milk: LiquidAmount(0),
//            milkFoam: LiquidAmount(0),
//            espressoShot: LiquidAmount(0.3),
//            chocolate: LiquidAmount(0),
//            cream: LiquidAmount(0),
//            iceCream: LiquidAmount(0),
//            alcohol: LiquidAmount(0)
//        )
//    case .doppioView:
//        return Coffee(
//            water: LiquidAmount(0),
//            milk: LiquidAmount(0),
//            milkFoam: LiquidAmount(0),
//            espressoShot: LiquidAmount(0.6),
//            chocolate: LiquidAmount(0),
//            cream: LiquidAmount(0),
//            iceCream: LiquidAmount(0),
//            alcohol: LiquidAmount(0)
//        )
//    default:
//        fatalError("No coffee view")
//    }
//}

let espresso = Page(
    id: "espresso",
    title: "Espresso",
    contentSubTitle: "The Original Single",
    contentTitle: "Espresso",
    titleImageName: "Espresso",
    coffeeView: .espressoView,
    components: [
        PageHeadline("What Is Espresso?", topSpacing: false),
        PageText("Espresso is a coffee-making method which has its origins in Italy. To make espresso you need a small amount of nearly boiling water forced under pressure through ground coffee beans."),
        PageFact("To make espresso you will need an espresso machine. Nowadays, you can get an espresso pretty much anywhere. You can even get affordable espresso machines in your own home.", topSpacing: true),
        PageDivider(topSpacing: false),
        PageText("A single shot of espresso, by contrast, is called a solo and was developed because it was the maximum amount of ground coffee that could practically be extracted by lever espresso machines.", bottomSpacing: true),
        PageText("The length of one espresso shot can be ristretto (or stretto) (reduced), normale or standard (normal), or lungo (long). Proportions will vary and the volume of the crema will also be different depending on the measurements used. For example, a ristretto is usually half of a volume of normale and lungo is double the normal volume.")
    ]
)

let doppio = Page(
    id: "doppio",
    title: "Doppio",
    contentSubTitle: "The Double Amount of Espresso",
    contentTitle: "Doppio",
    titleImageName: "Doppio",
    coffeeView: .doppioView,
    components: [
        PageHeadline("What Is Doppio?", topSpacing: false),
        PageText("A Doppio is a double espresso in a cup. No other ingredient is added to it. To create a double espresso all you need is two shots of espresso."),
        PageFact("To make doppio you will also need an espresso machine. It's basically the double amount of espresso or called as double espresso!", topSpacing: true),
        PageDivider(topSpacing: false),
        PageText("Doppio is Italian meaning of 'double'. It is commonly called a standard double, due to its standard in judging the espresso quality in barista competitions, where 4 single espresso are made using two double portafilters."),
    ]
)

let americano = Page(
    id: "americano",
    title: "Americano",
    contentSubTitle: "The Double Amount of Espresso",
    contentTitle: "Americano",
    titleImageName: "Americano",
    coffeeView: .americanoView,
    components: [
        PageHeadline("What Is Americano?", topSpacing: false),
        PageText("An Americano is a strong Italian espresso drink. A long coffee or an Americano is just hot water which has a shot of espresso. To make an Americano, you must pour the hot water first. Fill two-thirds of a cup with hot water and add one shot of espresso over the hot water.", bottomSpacing: true),
        PageFact("It's history dates back to World War II when American soldiers were stationed in Italy. They wanted something resembling the black Coffee that they used to drink. This adaptation was received to such an extent that it got its name as 'Americano'.", topSpacing: true),
    ]
)

let cappuccino = Page(
    id: "cappuccino",
    title: "Cappuccino",
    contentSubTitle: "The Austrian Ideal Morning Coffee",
    contentTitle: "Cappuccino",
    titleImageName: "Cappuccino",
    coffeeView: .cappuccinoView,
    components: [
        PageHeadline("What Is Cappuccino?", topSpacing: false),
        PageText("Cappuccino is an espresso-based drink that comes from an Austrian drink called Kapuziner. Prepared with steamed milk foam or micro foam."),
        PageFact("In Italy, a cappuccino is a breakfast drink which shouldn't be ordered after 12 pm. During the winter months, you will find cappuccinos topped with cinnamon powder or nutmeg on the top for a most festive taste.", topSpacing: true),
        PageDivider(topSpacing: false),
        PageText("To make cappuccino, extract one shot of espresso in a cup. Add steamed milk and 3 cm of foamed milk.", bottomSpacing: true)
    ]
)

let latte = Page(
    id: "latte",
    title: "Latte",
    contentSubTitle: "The Italian Milk Coffee",
    contentTitle: "Latte",
    titleImageName: "Latte",
    coffeeView: .latteView,
    components: [
        PageHeadline("What Is Latte?", topSpacing: false),
        PageText("Latte is the Italian word for milk and in Italy, this beverage means milk coffee. This type of Coffee is a much creamier version, said to have served some tourists in Italy who thought cappuccino was too strong for their palate."),
        PageFact("You know that a latte is a lot more than just coffee with milk on top. The steamed milk is the star attraction in a latte with just a tad bit of foam on the top. Many coffee shops in the world train their baristas to create some of the most incredible latte art you can imagine!", topSpacing: true),
        PageDivider(topSpacing: false),
        PageText("A latte is relatively similar to a cappuccino, although the ratio of espresso, steamed milk and milk foam is different.", bottomSpacing: true)
    ]
)

let mocha = Page(
    id: "mocha",
    title: "Mocha",
    contentSubTitle: "Chocolate Cappuccino",
    contentTitle: "Mocha",
    titleImageName: "Mocha",
    coffeeView: .mochaView,
    components: [
        PageHeadline("What Is Mocha?", topSpacing: false),
        PageText("A mocha is a cross between a cappuccino and a hot chocolate."),
        PageFact("Mocha as a coffee name can be a little confusing. Mocha coffee is not the same as mocha coffee beans. Mocha beans come from a place called Mocha in Yemen. They're famous for having a green and yellow tint compared to the other brown-coloured beans. It's a chocolate-flavoured warm beverage made with layers of espresso, milk and chocolate.", topSpacing: true),
        PageDivider(topSpacing: false),
        PageText("To make the perfect mocha, extract one shot of espresso into a cup. Add one spoon of chocolate powder into the espresso and mix. Top it up with steamed milk and around 3 cm of milk foam.", bottomSpacing: true)
    ]
)

let cortado = Page(
    id: "cortrado",
    title: "Cortado",
    contentSubTitle: "Spanish Milk Coffee",
    contentTitle: "Cortado",
    titleImageName: "Cortado",
    coffeeView: .cortadoView,
    components: [
        PageHeadline("What Is Cortado?", topSpacing: false),
        PageText("A cortado is a beverage made with one shot of espresso mixed with a roughly equal amount of steamed milk."),
        PageFact("Since the milk is used to cut back the espresso's acidity, the name came from the Spanish word cortar means to cut. The milk blends smoothly into the espresso without forming any layers. It provides a space for the flavours to enhance. So that's why a cortado becomes a fine balance of espresso and steamed milk.", topSpacing: true),
        PageDivider(topSpacing: false),
        PageText("The important part to remember is that a cortado has steamed milk and not frothy or texturised in any way like in many Italian coffees.", bottomSpacing: true)
    ]
)

let flatWhite = Page(
    id: "flatwhite",
    title: "Flat White",
    contentSubTitle: "More Steamed Milk than Cortado",
    contentTitle: "Flat White",
    titleImageName: "Flat White",
    coffeeView: .flatWhiteView,
    components: [
        PageHeadline("What Is Flat White?", topSpacing: false),
        PageText("A flat white is like a cortado, just with a lot more steamed milk on top. It relates to the Latte since it is an espresso-based drink made with steamed milk and a thin foam layer. However, it has a much higher proportion of espresso than milk. "),
        PageFact("Flat whites are popular in Australia and New Zealand so expect to see them on the menu during your trip abroad.", topSpacing: true, bottomSpacing: true)
    ]
)

let macchiato = Page(
    id: "macchiato",
    title: "Macchiato",
    contentSubTitle: "The Tiniest Dollop of Milk Espresso",
    contentTitle: "Macchiato",
    titleImageName: "Macchiato",
    coffeeView: .macchiatoView,
    components: [
        PageHeadline("What Is Macchiato?", topSpacing: false),
        PageText("A macchiato is essentially an espresso-based drink that means stained or spotted in Italian. This type of Coffee is similar to both, Cappuccino and Doppio. However, the difference lies in the small amount of milk foam on its top that mellows its intensity."),
        PageFact("The origin of the name is actually quite interesting. It comes from baristas needing to show the waiters the difference between an espresso and an espresso with a little milk in it. So the latter was especially marked which became the macchiato.", topSpacing: true),
        PageDivider(topSpacing: false),
        PageText("You can ask for a macchiato which is a single espresso with a dollop of milk foam or a double macchiato which is a doppio (double espresso) with a dollop of milk foam."),
        PageText("Just note that different baristas will have their own way of doing the macchiato. You will find some who add a dollop of steamed milk and a dollop of milk foam. It's all down to the training and individual preference.", bottomSpacing: true)
    ]
)

let conPanna = Page(
    id: "conPanna",
    title: "Con Panna",
    contentSubTitle: "The Cream Espresso",
    contentTitle: "Con Panna",
    titleImageName: "Con Panna",
    coffeeView: .conPannaView,
    components: [
        PageHeadline("What Is Con Panna?", topSpacing: false),
        PageText("Con Panna is a dessert-like, sweet, old fashioned way of having coffee than a latte or a cappuccino. Panna means cream in Italian so espresso con panna means espresso with cream."),
        PageFact("The origin is often disputed although the base is like Mocha, Affogato, and other chocolate based espresso. ", topSpacing: true),
        PageDivider(topSpacing: false),
        PageText("To brew Con Panna, extract a shot of espresso into a cup, then add whipped cream on top. It best suits people who love sweet and strong flavours simultaneously.", bottomSpacing: true)
    ]
)

let affogato = Page(
    id: "affogato",
    title: "Affogato",
    contentSubTitle: "The Dessert Coffee",
    contentTitle: "Affogato",
    titleImageName: "Affogato",
    coffeeView: .affogatoView,
    components: [
        PageHeadline("What Is Affogato?", topSpacing: false),
        PageText("An affogato is a dessert coffee that is best served during the summer. It's usually ordered after dinner as a combination of espresso and ice cream."),
        PageFact("In Italy, an affogato is most certainly a dessert, although you will find some restaurants and coffee shops outside of Italy which categorize it as a beverage.", topSpacing: true),
        PageDivider(topSpacing: false),
        PageText("Because affogato is an overwhelming combination of a scoop of vanilla ice cream and hot espresso, this coffee will be the icing on the cake! To make an affogato, add one scoop of (vanilla) ice cream into a tumbler glass and pour a single or double espresso over the ice cream.", bottomSpacing: true)
    ]
)

let irishCoffee = Page(
    id: "irishCoffee",
    title: "Irish Coffee",
    contentSubTitle: "The Alcohol",
    contentTitle: "Irish Coffee",
    titleImageName: "Irish Coffee",
    coffeeView: .irishCoffeeView,
    components: [
        PageHeadline("What Is Irish Coffee?", topSpacing: false),
        PageText("Irish Coffee contains espresso, whiskey and cream. It's a delightful and cheerful and basically classed more of a cocktail than a coffee. Irish coffee is drunk through the cream."),
        PageFact("Irish Coffee is a perfect fit for a wintry night. It was first brewed in 1943 by Joe Sheridan, an airport chef who came up with the drink on a chilly winter night to comfort misplaced passengers.", topSpacing: true),
        PageDivider(topSpacing: false),
        PageText("Irish Coffee is an excellent cocktail prevalent on many bar menus. Sit back, relax and sip a delicious combo of espresso and whiskey through a thick layer of indulgent whipped cream.", bottomSpacing: true)
    ]
)


