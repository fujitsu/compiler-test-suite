      integer mexp (10, 10)
      integer row, col
      data mexp/100*0/
      do 10, row = 1, 5, 2
           do 10, col = 1, 7, 2
10              mexp (row, col) = 57

      print *,mexp
      end
