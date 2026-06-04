integer*4 a(8), b(8), c(8), d(8)
interface
  elemental integer function fun ( x, y  )
    integer*4,intent(in) :: x, y
  end function fun 
end interface

a=(/1,2,3,4,5,6,7,8/)
b=(/1,2,3,4,5,6,7,8/)
c=(/1,2,3,4,5,6,7,8/)
d=(/1,2,3,4,5,6,7,8/)

!$omp parallel workshare
forall ( i=2:8 )
   a(i) = fun ( a(i), b(i-1) )
endforall
!$omp end parallel workshare


do  i=2,8
    c(i) = fun ( c(i), d(i-1) )
end do

if ( any(a/=c) ) print *,"fail"
print *,'pass'
end

  elemental integer function fun ( x, y  )
    integer*4,intent(in) :: x, y
    fun = x*x + y*y         
  end function fun 
