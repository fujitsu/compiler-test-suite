integer*4:: a(9) /1,2,3,1,2,3,1,2,3/
integer*4   b(9) /1,2,3,1,2,3,1,2,3/
interface
    elemental integer function f1(x)
        integer*4,intent(in) :: x
    end function f1
end interface

!$omp parallel workshare
forall ( i=1:9 )
    a(i)     = a(f1(a(i)))    
endforall
!$omp end parallel workshare
do i=1,9
    b(i)     = b(f1(a(i)))    
end do

if ( any(a/=b) ) print *,"fail"
print *,'pass'
end

  integer elemental function f1(x)
    integer*4,intent(in):: x
    f1 = x*x
  end  
