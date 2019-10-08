
def day_trader(day_value_array)
    # en entrée un array des valeurs de transac de la semaine

    # Initialisation du hash qui va stocker la meilleure affaire : 
    best_trade_hash = trade_between_day_hash(day_value_array,0,1)

    # On boucle sur toutes les transactions du array 
    for day_buy in (0..(day_value_array.length-1))
        
        # on boucle sur toutes les transactions des jours restant (Vente après achat)
        for day_sell in ((day_buy)..(day_value_array.length-1))

            # On stock la transaction analysée :
            current_trade_hash = trade_between_day_hash(day_value_array, day_buy, day_sell)
            
            # Si la transaction actuelle est meilleur elle est stocké dans la variable de la meilleur transac
            (current_trade_hash[:trade] >= best_trade_hash[:trade])? (best_trade_hash = current_trade_hash) : ""

        end

    end 
    return [best_trade_hash[:buy],best_trade_hash[:sell]]
end

 
def trade_between_day_hash(day_value_array, day_buy, day_sell )
    # Calcul une transaction entre 2 jours
    # en entrée : day_value_array : le array des transactions
    # day_buy : jour d'achat
    # day_sell : jour de vente

    return {    
        trade: day_value_array[day_sell].to_i - day_value_array[day_buy].to_i, 
        buy: day_buy,
        sell: day_sell 
    }

end 

print day_trader([17, 3, 1, 9, 15, 8, 6, 18, 10])
puts
