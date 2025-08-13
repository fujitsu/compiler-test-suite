 program len
 implicit none
 integer, parameter :: isize = 1*1024

 integer i
   real*8, A(isize), b(isize)

 B = 0.000001
 A = 0.0

         DO I=1,isize
             A(I)=fun(i)
             B(I)=I+1
         END DO
         DO I=1,isize,1000
             write(33,*) A(i)
         END DO
 print *, 'pass'
 contains
     RECURSIVE FUNCTION FUN(J)
     real*8 :: FUN
     integer,intent(in) :: j
     FUN=sin(1.0/j)
     END function fun

 end program len
