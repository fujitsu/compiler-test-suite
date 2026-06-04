integer*4:: a(9) /1,2,3,1,2,3,1,2,3/
integer*4   b(9) /1,2,3,1,2,3,1,2,3/
interface
    elemental integer function f1(x)
        integer*4,intent(in) :: x
    end function f1
end interface

!$omp parallel workshare
forall ( i=1:3 )
    a(f1(i))     = a(f1(i)) + 1
endforall
!$omp end parallel workshare
do i=1,3
    b(f1(i))     = b(f1(i)) + 1
end do

if ( any(a/=b) ) print *,"fail"
print *,'pass'
end

  elemental integer function f1(x)
    integer*4,intent(in):: x
    f1 = x*x
  end  
