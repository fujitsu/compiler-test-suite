      real*8 a(10),b(10)/1,2,3,4,5,6,7,8,9,20/
      equivalence (a,b)

      do i = 1,10
         b(i) = (SIN(B(i))+log(b(i)))
      end do

      write(6,*) "B =",B
      end
