class Players
    attr_accessor :name, :marker
  
    def initialize(name, marker)
      @name = name
      @marker = marker
    end
  end
  
  p 'Please enter your name and your marker'
  player1 = Players.new(gets.chomp, gets.chomp)
  p 'Please enter your 2nd Player name and your 2nd marker'
  player2 = Players.new(gets.chomp, gets.chomp)
  
  def your_position
    p 'enter your position'
    p '1|2|3'
    p '4|5|6'
    p '7|8|9'
  end
  
  board = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
  a = 0
  
  result = 0
  def get_first_player(board, player1)
    first_choice = gets.chomp.to_i
    board[first_choice - 1] = player1.marker
  end
  
  def get_second_player(board, player2)
    second_choice = gets.chomp.to_i
    board[second_choice - 1] = player2.marker
  end
  
  def show_board(board)
    p board[0..2]
    p board[3..5]
    p board[6..8]
  end
  
  def fill(board,b)
    board.each do |num|
      if num==" "   
      else
        b=b+1
      end    
    end
    return b
  end
  
  def draw_board(board, player1, player2)
    if(board[0]==player1.marker||board[0]==player2.marker) && 
      if(board[1]==player1.marker||board[1]==player2.marker) && 
      if(board[2]==player1.marker||board[2]==player2.marker) && 
       if(board[3]==player1.marker||board[3]==player2.marker) && 
      if(board[4]==player1.marker||board[4]==player2.marker) && 
      if(board[5]==player1.marker||board[5]==player2.marker) &&
      if(board[6]==player1.marker||board[6]==player2.marker) && 
      if (board[7]==player1.marker||board[7]==player2.marker) &&
      if(board[8]==player1.marker||board[8]==player2.marker)
      puts("Its a draw")
      return 1
      end
      end
    end
    end
    end
    end
    end
    end
    end
  end
  def show_the_board(board, player1, player2, a)
   b=0
   your_position
   get_first_player(board, player1)
   show_board(board)
   result = winner(board, player1, player2)
   if result == 1
      a = 1
      return a
   end
  
    ap = draw_board(board, player1, player2)
    if ap == 1 
        return 1
    end
   your_position
   get_second_player(board, player2)
   show_board(board)
   result = winner(board, player1, player2)
   if result == 1
      return 1
    end
    ap = draw_board(board, player1, player2)
    if ap == 1    
        return 1
    end
  end
  
  def winner(board, player1, player2)
    if board[0] && board[4] && board[8] != ' ' && (board[0].to_s == board[4].to_s && board[4].to_s == board[8].to_s)
      if board[0] == player1.marker
        print "#{player1.name} won "
        return 1
      elsif board[0] == player2.marker
        print "#{player2.name} won "
        return 1
      end
    end
  
    if board[2] && board[4] && board[6] != ' ' && (board[2].to_s == board[4].to_s && board[4].to_s == board[6].to_s)
  
      if board[2] == player1.marker
        print "#{player1.name} won "
        return 1
      elsif board[2] == player2.marker
        print "#{player2.name} won "
        return 1
  
      end
    end
  
    if board[0] && board[1] && board[2] != ' ' && (board[0].to_s == board[1].to_s && board[1].to_s == board[2].to_s)
  
      if board[0] == player1.marker
        print "#{player1.name} won "
        return 1
      elsif board[0] == player2.marker
        print "#{player2.name} won "
        return 1
  
      end
    end
    if board[0] && board[3] && board[6] != ' ' && (board[0].to_s == board[3].to_s && board[3].to_s == board[6].to_s)
  
      if board[0] == player1.marker
        print "#{player1.name} won "
        return 1
      elsif board[0] == player2.marker
        print "#{player2.name} won "
        return 1
  
      end
    end
    if board[2] && board[4] && board[6] != ' ' && (board[2].to_s == board[4].to_s && board[4].to_s == board[6].to_s)
  
      if board[2] == player1.marker
        print "#{player1.name} won "
        return 1
      elsif board[2] == player2.marker
        print "#{player2.name} won "
        return 1
  
      end
    end
    if board[6] && board[7] && board[8] != ' ' && (board[6].to_s == board[7].to_s && board[7].to_s == board[8].to_s)
  
      if board[6] == player1.marker
        print "#{player1.name} won "
        return 1
      elsif board[6] == player2.marker
        print "#{player2.name} won "
        return 1
  
      end
    end
    if board[3] && board[4] && board[5] != ' ' && (board[3].to_s == board[4].to_s && board[4].to_s == board[5].to_s)
  
      if board[3] == player1.marker
        print "#{player1.name} won "
        return 1
      elsif board[3] == player2.marker
        print "#{player2.name} won "
        return 1
      end
    end
    if board[1] && board[4] && board[7] != ' ' && (board[1].to_s == board[4].to_s && board[4].to_s == board[7].to_s)
  
      if board[1] == player1.marker
        print "#{player1.name} won "
        1
      elsif board[1] == player2.marker
        print "#{player2.name} won "
        1
      end
    end
  end
  
    
  for k in 0..2  
    if show_the_board(board, player1, player2, a) == 1    
      break
    elsif show_the_board(board, player1, player2, a) == 1
    break    
      show_the_board(board, player1, player2, a)
      if show_the_board(board, player1, player2, a) == 1
  
        break
      end
    end
  end
  
  