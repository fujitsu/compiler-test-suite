module m1
  type base
    integer::b1
  end type
  type,extends(base)::ext
    integer::z1
  end type
contains
 subroutine s1(fm)
  class(base),pointer,intent(in) ::fm(:)
  class(base),allocatable::tmp(:)
if (size(fm)/=2) print *,101
   k=0
   select type(fm)
    type is(ext)
     fm(1)%b1   =201
     fm(1)%z1   =101
     k=1
   end select
   if (k/=1) print *,8001

     !print *,'fm b1:',fm(1)%b1  
  allocate( tmp(2), source=fm)

if (size(tmp)/=2) print *,9001
     !print *,'tmp b1:',tmp(1)%b1  
if (tmp(1)%b1/=201) print *,9001
   select type(tmp)
    type is(ext)
     !print *,'b1:',tmp(1)%b1  
    ! print *,'z1:',tmp(1)%z1  
if (tmp(1)%z1/=101) print *,9011
   end select

end
end


use m1
  type (ext)            ,target::fm(2)
call s1(fm)
print *,'sngg425p : pass'
end
