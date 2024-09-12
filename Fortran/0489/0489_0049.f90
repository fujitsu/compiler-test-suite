module mod
 contains
   pure function fun( d )
     real , intent(in):: d
     fun = d + 1.0
   end function
end
subroutine test(a,b)
use mod
real,dimension(1000) :: a,b
do concurrent(i=1:1000)
   a(i) = a(i) + fun( b(i) ) 
enddo
end subroutine test
real,dimension(1000) :: a=0,b=0
call test(a,b)
print *,'pass'
end

