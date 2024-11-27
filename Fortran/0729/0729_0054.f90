module typ
contains
    elemental subroutine  one_over (y, x)
      real, intent(out) :: y
      real, intent(in) :: x
      if (x /= 0.0) then
         y = 1.0 / x
      else
      end if
    end subroutine  one_over

    elemental subroutine  one_over_x (y, x, err)
      real, intent(out) :: y
      real, intent(in) :: x
      logical, intent(out) :: err
      if (x /= 0.0) then
         y = 1.0 / x
         err = .false.
      else
         y = 0.0
         err = .true.
      end if
    end subroutine  one_over_x
end module 
use typ
 real,dimension(:,:),allocatable::x,y
 logical,dimension(:,:),allocatable::err
 allocate(x(2,3),y(2,3),err(2,3))
 x=0.5
 err=.false.
 call one_over_x(y,x,err)
 if (any(abs(y*x-1.0)>0.00001))write(6,*) "NG"
 if (any(err))write(6,*) "NG"
print *,'pass'
end
