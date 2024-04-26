      integer mexp (10, 10)
      integer row, col
      mexp = 0
      do 10, row = 1, 5, 2
           do 10, col = 1, 7, 2
10              mexp (row, col) = 57

      do 20, row = 2, 4, 2
           do 20, col = 2, 6, 2
20              mexp (row, col) = 57
           
      do 30, row = 1, 5, 2
           do 30, col = 2, 6, 2
30              mexp (row, col) = 75

      do 40, row = 2, 4, 2
           do 40, col = 1, 7, 2
40              mexp (row, col) = 75
      print *,merge("OK","NG",sum(mexp)==2301)
      end 
