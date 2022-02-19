def janken
    hands = ["グー", "チョキ", "パー"]
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    myhand = gets.to_i
    yourhand = rand(3)
    puts "ポイ!"
    puts "------------"
    puts "あなた:#{hands[myhand]}を出しました"
    puts "あいて:#{hands[yourhand]}を出しました"
    puts "------------"

    #じゃんけん引き分け
   if myhand == yourhand
    puts "あいこで..."

    return true
       
    #じゃんけん勝ち
   elsif (myhand == 0 && yourhand == 1) || (myhand == 1 && yourhand == 2) || (myhand == 2 && yourhand == 0)
    yubi = ["0(上)", "1(下)", "2(左)", "3(右)"]    
    puts "あっちむいて..."
    puts "0(上)1(下)2(左)3(右)"
    myhand_yubi = gets.to_i
    yourhand_yubi = rand(3)
    puts "ホイ!"
    puts "------------"
    puts "あなた:#{yubi[myhand_yubi]}"
    puts "あいて:#{yubi[yourhand_yubi]}"
    puts "------------"

    #あっちむいてほい同じ向き
    if myhand_yubi == yourhand_yubi
        puts "勝ち"
        return false
    #あっちむいてほい違う向き
    else
        puts "残念..."
        return true
    end

    #じゃんけん勝ち
   elsif (myhand == 0 && yourhand == 2) || (myhand == 1 && yourhand == 0) || (myhand == 2 && yourhand == 1)
    yubi2 = ["0(上)", "1(下)", "2(左)", "3(右)"]    
    puts "あっちむいて..."
    puts "0(上)1(下)2(左)3(右)"
    myhand_yubi2 = gets.to_i
    yourhand_yubi2 = rand(3)
    puts "ホイ!"
    puts "------------"
    puts "あなた:#{yubi2[myhand_yubi2]}"
    puts "あいて:#{yubi2[yourhand_yubi2]}"
    puts "------------"

    #あっちむいてほい同じ向き
    if myhand_yubi2 == yourhand_yubi2
        puts "負け"
        return false
        #あっちむいてほい違う向き
    else
        puts "セーフ"
        return true
    end
    #じゃんけんしてない
   else
    puts "諦めます"
    return false
   end
end

next_game = true

puts "じゃんけん..."

while next_game
    next_game = janken
end