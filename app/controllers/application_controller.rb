class ApplicationController < ActionController::Base
  def filter

  end

   # Funzione che concatena due colonne per ricercare per entrambe separate da uno spazio (ESEMPIO `first_name last_name`)
  def concatColumns (columns)
    if columns.length <=1 
      return columns
    else
      
    end
    # "CONCAT(CONCAT(#{firstCol}, ' '), #{lastCol})"
  end

  # Funzione che produce l'array finale di query. 
  # columns = ["first_name", "last_name"]
  # query = "marco"
  # result = ["first_name ILIKE ? OR last_name ILIKE ?", "%marco%", "%marco%"]
  def renderQuery (columns, query)
    temp = []
    logger.debug("Columns")
    logger.debug(columns);
    columns.length.times do |i| 
      temp[i] = columns[i]["column"] + " #{columns[i]["comparator"]} ?"
    end
    result = [temp.join(" OR ")]
    temp.length.times do |i|
      # query.split(" ").join(" ") ---> rimuove tutti gli spazi di troppo lasciandone uno solo tra la prima colonna e la seconda.
      result.push("%#{query.split(" ").join(" ")}%")
    end
    logger.debug(result)
    result
  end
end
