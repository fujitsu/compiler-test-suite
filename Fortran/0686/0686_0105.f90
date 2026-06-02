integer :: a(10) /1,2,3,4,5,6,7,8,9,10/
integer :: b(10)
interface
  elemental integer function fun ( x )
    integer*4,intent(in) :: x
  end function fun
end interface
logical::l1,l2
equivalence ( a(1) , b(1) )

!$omp parallel
!$omp workshare
l1 = any(b/=(/1,2,3,4,5,6,7,8,9,10/))
!$omp end workshare
if (l1) print *,"fail"
!$omp workshare
forall ( i = 1:9 )
    b(i+1) = fun( a(i) )
end forall
!$omp end workshare

!$omp workshare
l1 = any(a/=(/1,1,4,9,16,25,36,49,64,81/))
l2 = any(b/=(/1,1,4,9,16,25,36,49,64,81/))
!$omp end workshare
!$omp end parallel
if (l1.or.l2) print *,"fail"
print *,'pass'

end

  elemental integer function fun ( x )
    integer*4,intent(in) :: x
    fun = x*x
  end function fun
