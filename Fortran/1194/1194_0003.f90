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
  class(base),pointer,intent(in) ::fm(:)
  class(base),allocatable::tmp(:)
   select type(fm)
    type is(ext)
     allocate(fm(2)%b1,source=1)
     allocate(fm(2)%e1,source=2)
     allocate(fm(2)%e2)
     allocate(fm(2)%e2%x1,source=3)
     allocate(fm(2)%e2%x2,source=4)
     allocate(x_ext::fm(2)%e3)
     allocate(fm(2)%e3%x1,source=5)
     select type(p=>fm(2)%e3)
       type is(x_ext)
         !!!allocate(p%x2,source=6)
     end select
     allocate(ext::fm(2)%e4)
     select type(p=>fm(2)%e4)
       type is(ext)
     end select
   end select

  allocate( tmp, source=fm)

if (size(tmp)/=2) print *,9001
   select type(tmp)
    type is(ext)
     tmp(2)%b1=11
     tmp(2)%e1=12
     tmp(2)%e2%x1=13
     tmp(2)%e2%x2=14
     tmp(2)%e3%x1=15
     select type(p=>tmp(2)%e3)
       type is(x_ext)
         !!!p%x2=16
     end select
   end select

end
end


use m1
  type (ext)            ,target::fm(2)
call s1(fm)
print *,'sngg415p : pass'
end
