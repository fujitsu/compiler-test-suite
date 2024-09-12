      real*8 A,B(10),C(10)
      pointer(point,A)

      point = loc(B)
      A=10
      do i=1,10
        C(i)=EXP(A)
      enddo

      print *,"A = ",A
      print *,"C = ",C

      stop
      end
