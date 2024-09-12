      real  A(10)/1,2,3,4,5,6,7,8,9,10/
      real  B(10)/11,22,33,44,55,66,77,88,99,100/
      real*8 C(10)/10*0/
      real*8 D(10)/10*0/
      real*8 E(10)/10*0/

      do i = 1,9
        C(i) = SIN(A(i))
        D(i) = COS(B(i))
        E(i) = C(i)**D(i)
        C(i) = SIN(A(i+1))
        D(i) = COS(B(i+1))
      end do

      write (6,*) "C =",C
      write (6,*) "D =",D
      write (6,*) "E =",E
      end

