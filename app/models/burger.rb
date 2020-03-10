class Burger < ApplicationRecord
    def nutriments
        #recupérer les données de l'API faire un tableau
        product = Openfoodfacts::Product.get(self.code, locale: 'fr')
        nutri = product.nutriments.to_hash
        return nutri
    end
end
