      real*8 a(10),b(10),c(10)/1,2,3,4,5,6,7,8,9,20/
      equivalence (a,b)
 
      do i = 1,10
        B(i) = i+i*C(i)
        A(i) = SIN(C(i))+COS(C(i))
      end do

      write(6,*) "A =",A
      write(6,*) "B =",B
       end

