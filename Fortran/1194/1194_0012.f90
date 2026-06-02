module m1
  type x_base
    integer,allocatable::x1
  end type
  type,extends(x_base)::x_ext
    integer,allocatable::x2
  end type
  type base
    integer::b1
  end type
  type,extends(base)::ext
    integer::z1
    class(x_base),allocatable::e3
  end type
contains
 subroutine s1(fm)
  class(base),pointer,intent(in) ::fm(:)
  class(base),allocatable::tmp(:)
if (size(fm)/=2) print *,101
   select type(fm)
    type is(ext)
     allocate(x_ext::fm(1)%e3)
     allocate(fm(1)%e3%x1,source=5)
     select type(p=>fm(1)%e3)
       type is(x_ext)
         !!!allocate(p%x2,source=6)
       class default
         print *,8001
     end select
   end select
   k=0
   select type(fm)
    type is(ext)
     fm(1)%e3%x1=15
     fm(1)%b1   =201
     fm(1)%z1   =101
     select type(p=>fm(1)%e3)
       type is(x_ext)
     k=1
         !!!p%x2=16
     end select
   end select
   if (k/=1) print *,8001

     !print *,'fm b1:',fm(1)%b1  
  allocate( tmp(2), source=fm)

if (size(tmp)/=2) print *,9001
     !print *,'tmp b1:',tmp(1)%b1  
   select type(tmp)
    type is(ext)
     tmp(1)%e3%x1=15
     select type(p=>tmp(1)%e3)
       type is(x_ext)
         !!!p%x2=16
     end select
   end select

end
end


use m1
  type (ext)            ,target::fm(2)
call s1(fm)
print *,'sngg424p : pass'
end
