integer*4 a(8), b(8), c(8), d(8)

interface 
  elemental integer function fff(x,y)
    integer*4,intent(in)::x,y
  end function fff
end interface

a=(/1,2,3,4,5,6,7,8/)
b=(/1,2,3,4,5,6,7,8/)
c=(/1,2,3,4,5,6,7,8/)
d=(/1,2,3,4,5,6,7,8/)

!$omp parallel
!$omp workshare
forall ( i=1:8 )
   a(i) = fff( a(i), b(i) ) + a(i) + b(i)
endforall
!$omp end workshare

!$omp do
do i = 1, 8
   c(i) = fff( c(i), d(i) ) + c(i) + d(i)
enddo
!$omp end do
if ( any(a.ne.c) ) print *,"fail"
!$omp end parallel
print *,'pass'
end

elemental integer function fff ( x, y )
integer*4,intent(in)::  x, y
fff = x**2 + y**2
end function fff 
