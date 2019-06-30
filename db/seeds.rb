# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

SwimmingPool.destroy_all

swimming_pools_attributes = [
  { name: "Piscine privée chauffée à St Emilion", description: "Pour être au calme​,​ venez passer un après-midi dans notre piscine chauffée (28deg) en pleine campagne et sans vis-a-vis. Vous aurez à votre disposition une table avec des chaises", address: "St Emilion", length: 10, width: 4, heated: true, capacity: 16, price: 20 },

  { name: "Piscine familiale située à 15 minutes de Lyon (La Tour-de-Salvagny)", description: "Venez avec votre famille ou vos amis​,​ profiter de notre grande piscine. Elle est très ensoleillée et dispose d'un grand jardin tout autour !
    Vous pourrez disposer de transats​,​ d'un salon extérieur couvert​,​ d'un barbecue​,​ d'une table ainsi que des chaises...", address: "La Tour-de-Salvagny", length: 7, width: 4, heated: false, capacity: 5, price: 25 },

  { name: "Piscine chauffée sans vis à vis​/​25min de Vienne​/​45min de Lyon (Four)", description: "Piscine chauffée (29-30°) très agréable dans un grand jardin en campagne​​,​​ sans vis-à-vis. 8.5 m par 4.5 m​,​ fond plat sur 1.3m de profondeur.
    A 15 minutes du village de marques de Villefontaine​​,​​ 15 minutes de Bourgoin-Jallieu et 45 minutes de Lyon.", address: "Four", length: 10, width: 5, heated: true, capacity: 10, price: 16 },

  { name: "Piscine dans cadre idyllique sud de lyon", description: "A 35 km au sud de LYON​,​ dans un magnifique parc arboré de 5000 m2​,​notre piscine chauffée a 30 degres accueille 3 COUPLES MAXIMUM ou 6 personnes maximum et pas d'enfants afin de préserver la tranquillité de chacun....
    nous n'avons aucun voisin proche donc intimité et calme seront au rendez vous ​,​ et vous aurez accés aux transats et solarium, toilettes sèches ,​ vestiaires et douche solaire...", address: "Tupin et Semons", length: 10, width: 4, heated: true, capacity: 6, price: 25 },

  { name: "Grande piscine à 20 minutes de Bordeaux (Quinsac)", description: "Profitez d'une grande piscine (10m x 5m) le temps d'une journée avec vos amis ou en famille !
    Très bien située à l'abri des regards​,​ elle dispose d'une belle terrasse ombragée qui donne sur un immense jardin de plus d'un hectare. Il est possible que vous aperceviez mes deux chevaux.
    Lors de cette journée vous pourrez disposer de transats​,​ de plusieurs tables et chaises ainsi que d'un salon de jardin.", address: "Quinsac", length: 10, width: 5, heated: false, capacity: 6, price: 20 },

  { name: "Location piscine privée à 1h de Bordeaux (Saint-Yzan-de-Soudiac)", description: "La piscine proposée est de 10x6 et couverte. Elle est traitée au brome. Une terrasse est utilisable même par mauvais temps. Vous avez aussi à disposition une salle de gym de 2 à 8 personnes pour organiser vos cours en toute tranquillité… ", address: "Saint-Yzan-de-Soudiac", length: 10, width: 6, heated: true, capacity: 8, price: 12 },

  { name: "Belle piscine située dans les vignobles Sauternais", description: "Le Clos San Gianni se situe en pleine campagne du sud Gironde à Pujols sur Ciron. Au calme​,​ à l’orée des bois et des vignobles du Sauternais. Piscine de 9.5x4.5m et 1.5m de profondeur. Sans vis à vis.
    Possibilité d'organiser fêtes type anniversaire. Plancha et mobilier mis à disposition avec supplément.", address: "Sauternes", length: 10, width: 6, heated: false, capacity: 8, price: 15 },

  { name: "Petit paradis avec piscine à 40 min de Paris proche de Disney (Thorigny-sur-Marne)", description: "Nous vous proposons une piscine turquoise entourée d'une belle terrasse​,​ d'une grande terrasse couverte et d'un beau petit jardin et des grands bananiers.
    Vous aurez à disposition des transats​​,​​ des tables et chaises et un barbecue.
    (prévoir votre nourriture et du charbon!)
    Au bord de la piscine​​,​​ détendez-vous​,​ les pieds dans l'eau​,​​ au soleil…
    Vous aurez également accès à la douche et aux toilettes.
    On peut aussi​,​ sur demande​,​ vous prêter notre cuisine pour vos préparations.
    Nous sommes toujours présents dans la maison quand la piscine est louée​,​ et on se permettra de piquer une tête quand il fera chaud.
    Mais nous vous réservons la piscine uniquement pour vous​​,​​ nous ne louons pas à 2 groupes différents.
    Les enfants sont acceptés à partir de 10 ans sous la surveillance de leurs parents. (sous réserve qu'ils sachent nager)
    Seules les personnes ayant réservé​​,​​ et donné leur identité seront les bienvenues et auront accès à la piscine.
    Baignez-vous​​,​​ bronzez​​,​​ reposez-vous​​,​​ faites ce qu'il vous plaît en toute intimité.
    Pas de vis-à-vis! ", address: "Thorigny-sur-Marne", length: 10, width: 4, heated: false, capacity: 10, price: 30 },

  { name: "Piscine chauffée​,​ couverte ou découverte à 40 minutes de Paris (Saint-Thibault-des-Vignes)", description: "Nous vous proposons une piscine agrémentée d'un beau jardin et d'une grande terrasse. Vous aurez à disposition une cuisine d'été​,​ des tables et chaises et un barbecue pour faire vos plats d'été.
    Dans le jardin​,​ détendez-vous les pieds en éventail sur les transats​,​ au soleil… Laissez-vous charmer par cet endroit​,​ à bientôt !", address: "Saint-Thibault-des-Vignes", length: 14, width: 3, heated: true, capacity: 15, price: 35 },

  { name: "Piscine couverte chauffée à 40 minutes à l'Est de Paris (Villeneuve-le-Comte)", description: "Nous serons heureux d'accueillir 8 personnes maximum. Les enfants sont les bienvenus​,​ mais ils restent sous l'entière responsabilité des parents.

    Vous aurez à votre disposition​,​ des transats​,​ des bouées​,​ des frites et des brassards. Le terrain de 5000 M2 est idéal pour les enfants. Ils pourrons faire des jeux et jouer sur la balançoire.
    Vous pourrez également avoir accès à une douche et aux toilettes.

    Horaires :

    tranche de 4h entre 10h et 19h
    Nous acceptons les soirées privées (nous contacter par message)
    Tous les jours week-end et fériés
    Possibilités d'avoir le barbecue (5 euros) tables et chaises (gratuites)
    Bruit raisonnable pour le voisinage demandé (musique acceptée, enceinte Bluetooth fournie)
    MAILLOT DE BAIN EXIGE

    ACCÈS :
    Proche Disney et village nature
    RER A a 10mm (bus 32 dessert le village)
    Village très calme", address: "Villeneuve-le-Comte", length: 8, width: 4, heated: true, capacity: 16, price: 28 }
]

swimming_pools_attributes.each { |params| SwimmingPool.create!(params) }
