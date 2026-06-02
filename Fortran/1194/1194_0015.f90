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
     fm(1)%b1   =201
     if (fm(1)%b1  /=201) print *,1001
  allocate( tmp(2), source=fm)

if (size(tmp)/=2) print *,9001
     if (tmp(1)%b1  /=201) print *,1101

end
end


use m1
  type (base)            ,target::fm(2)
call s1(fm)
print *,'sngg427p : pass'
end
