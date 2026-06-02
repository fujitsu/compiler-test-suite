module m1
  type base
    integer::b1
  end type
contains
 subroutine s1(fm)
  class(base),pointer,intent(in) ::fm(:)
  class(base),allocatable::tmp(:)
if (size(fm)/=2) print *,101

  allocate( tmp(2), source=fm)

if (size(tmp)/=2) print *,9001
if (tmp(2)%b1/=202)print *,8001
if (tmp(1)%b1/=201) then
     print *,'tmp b1:',tmp(1)%b1  
     print *,'tmp b1:',tmp(2)%b1  
     print '(Z16.16)',loc(tmp(1)%b1  )
     print '(Z16.16)',loc(tmp(2)%b1  )
end if

end
end


use m1
  class (base),allocatable,target::fm(:)
  allocate(fm(2))
     fm(1)%b1   =201
     fm(2)%b1   =202
call s1(fm)
print *,'sngg434p : pass'
end
