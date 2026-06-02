module m1
  type x_base
    integer,allocatable::x1
  end type
  type,extends(x_base)::x_ext
    integer,allocatable::x2
  end type
  type base
    integer,allocatable::b1
  end type
  type,extends(base)::ext
    integer,allocatable::e1
    type (x_ext),allocatable::e2
    class(x_base),allocatable::e3
    class(base),allocatable::e4
  end type
contains
 subroutine s1(fm)
  class(base),pointer,intent(in) ::fm
   select type(fm)
    type is(ext)
     allocate(fm%b1,source=6)
     allocate(fm%e1,source=6)
     select type(p=>fm%e3)
       type is(x_ext)
 !!!        allocate(p%x2,source=6)
     end select
   end select
end
end


use m1
  type (ext)            ,target::fm
call s1(fm)
print *,'sngg410p : pass'
end
