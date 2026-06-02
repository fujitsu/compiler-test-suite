integer*4 a(5), b(6), c(6)
logical*8 l1,l2
interface
  elemental integer function fun ( x, y  )
    integer*4,intent(in) :: x, y
  end function fun 
  elemental integer function fun1 ( z  )
    integer*4,intent(in) :: z
  end function fun1
end interface

!$omp parallel
!$omp workshare
a=(/1,2,3,4,5/)
b=(/1,2,3,4,5,6/)
c=(/1,2,3,4,5,6/)
forall ( i=1:5 )
   a(i) = fun ( b(i), b(i+1) + fun1(a(i)) )
   c(i) = fun ( c(i), c(i) + fun1(c(i+1)) )
endforall
l1=any(a/=(/10,53,178,457,986/))
l2=any(c/=(/26,125,370,857,1706,6/))
!$omp end workshare
!$omp end parallel
if(l1.or.l2) print *,"fail"
print *,'pass'
end
  elemental integer function fun ( x, y  )
    integer*4,intent(in) :: x, y
    fun = x*x + y*y         
  end function fun 
  elemental integer function fun1 ( z  )
    integer*4,intent(in) :: z
    fun1 = z*z               
  end function fun1
