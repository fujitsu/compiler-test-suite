
      common /com1/aa
      integer*4  a(10),b(10),c(10)
      integer*4  aa(10)
      equivalence (a(2),b(1))
      equivalence (b(5),c(1))
      a=aa+1
      print *,a
      end

      block data bk
      common /com1/aa
      integer*4  aa(10)
      data aa /10*0/
      end
