def substrings(word, arr)
    #create hash and downcase word entries
    counted = {}
    down = word.downcase

    #check for matches and assign them to hash unless no matches
    arr.each do |e|
        match = down.scan(e).length
        counted[e] = match unless match == 0
    end
    p counted
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
