module m1
  type base
    integer::b1
  end type
contains
 subroutine s1(fm)
  type (base),pointer,intent(in) ::fm(:)
  class(base),allocatable::tmp(:)
if (size(fm)/=2) print *,101
     fm(1)%b1   =201
  allocate( tmp(2), source=fm)

if (size(tmp)/=2) print *,9001
    if (tmp(1)%b1/=201) print *,7001  

end
end


use m1
  type (base)            ,target::fm(2)
call s1(fm)
print *,'sngg429p : pass'
end
