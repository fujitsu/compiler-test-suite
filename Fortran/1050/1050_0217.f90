!
!
!

integer :: a(3,4)
call zee(a)
print *,"pass"
contains
  subroutine zee(x)
    integer,dimension(-1:,:) :: x
    x=5
    x(1,1) = 10
    x(1,3) = 20
!$omp task firstprivate(x)
    if (x(1,1) /= 10 .or. x(1,3) /= 20 ) then
       print *,"NG x(1,1)=",x(1,1)," / x(1,3)=",x(1,3)
    end if
    x(1,1) = 30
    x(1,4) = 40
!$omp end task
    if (x(1,1) /= 10 .or. x(1,3) /= 20) then
       print *,"NG x(1,1)=",x(1,1)," / x(1,3)=",x(1,3)
    endif
  end subroutine zee
end
