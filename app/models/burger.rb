class Burger < ApplicationRecord
    def nutriments
        #recupérer les données de l'API faire un tableau
        if(!self.code.nil?)
            product = Openfoodfacts::Product.get(self.code, locale: 'fr')
            if(!self.product.nil?)
                nutri = product.nutriments.to_hash
                return nutri[0]
            end
        end
        return "Aucun"
    end
end
