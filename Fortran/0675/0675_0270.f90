      real   a(10),b(10)
      real*8 c(10)/1,2,3,4,5,6,7,8,9,20/
      equivalence (a,b)
 
      do i = 1,10
        B(i) = (COS(LOG(C(i))+SIN(C(i))))-(SIN(C(i))+COS(C(i)))
        A(i) = B(i)+EXP(A(i))
      end do

      write(6,*) "A =",A
      write(6,*) "B =",B
       end

