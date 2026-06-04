integer*4 a(8), b(8)
logical*4 l1,l2

interface 
elemental integer function f(x,y)
 integer*4,intent(in)::x,y
end function f
end interface

a=(/1,2,3,4,5,6,7,8/)
b=(/1,2,3,4,5,6,7,8/)

!$omp parallel
!$omp workshare
forall ( i=1:8 )
    a(i) = f( a(i), b(i) )
    b(i) = a(i) + b(i)*b(i)
endforall
!$omp end workshare
!$omp end parallel

!$omp parallel
!$omp workshare
!$omp critical
l1 = any(a/=(/2 ,8,18,32,50, 72, 98,128/))
!$omp end critical
!$omp critical
l2 = any(b/=(/3,12,27,48,75,108,147,192/))
!$omp end critical
!$omp end workshare
!$omp end parallel
if (l1.or.l2) print *,"fail"
print *,'pass'
end

elemental integer function f ( x, y )
integer*4,intent(in)::  x, y
f = x**2 + y**2
end function f 
