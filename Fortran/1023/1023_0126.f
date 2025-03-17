      subroutine x3_c(ws3)
      parameter (i=2)
      structure /x1/
        integer*1   es1
	character *1 ch1
      end structure
      structure /x2/
        record /x1/ hs2
	character *2 ch2
      end structure
      structure /x3/
        record /x1/ hs3
        record /x2/ is3
        record /x1/ ha3(i)
        record /x2/ ia3(i)
      end structure
      record /x3/ ws3
      end
      structure /x3/
        integer*1   es1
      end structure
      record /x3/ ws3
      call x3_c(ws3)
      end
