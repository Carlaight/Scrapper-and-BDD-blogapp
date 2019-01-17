require_relative '../lib/trader.rb'

describe "the crypto_scrapper method" do
  it "should return an array of hash" do
    expect(crypto_scrapper).not_to be_nil
  end
  
  it "should expect cryptovalue[0] to return bitcoin" do
    expect("#{cryptovalue[0]}")
  end
end

    Comment évaluer si cette sortie est acceptable (= s'il fonctionne bien) ? Il y a plusieurs techniqulient, and client es.
    Nous pouvons vérifier la taille de l'array, et la comparer au nombre de cryptomonnaies sur le site : on doit avoir autant d'entrée dans notre array que de crypto sur le site. Mais ce n'est pas très robuste, car il suffit qu'une cryptomonnaie soit rajoutée et tout plante.
    Une autre technique serait de vérifier au moins une entrée dans l’array. On est rassurés si, dans notre array, il existe un hash qui a BTC en key et un float non nul et non Nil en value. En cas d'absence, c'est que notre scrappeur n'a pas récupéré le Bitcoin (oups), ou s'il n'a pas de float associé, c'est qu'il n'a pas bien récupéré le cours du Bitcoin (oups bis).
    => Au final, une bonne solution pourrait être un mix des deux : vérifier que ton scrappeur récupère au moins x cryptomonnaies (comme ça, t'es pas à une près) et vérifier la présence de 2-3 cryptomonnaies phares (avec un cours non Nil et non nul).

Si ta méthode crypto_scrapper répond bien à ceci, c'est que, a priori, tout va bien