module m1
  type base
    integer::b1
  end type
contains
 subroutine s1(fm)
  class(base),pointer,intent(in) ::fm(:)
  class(base),allocatable::tmp(:)
if (size(fm)/=2) print *,101
!     print *,'fm b1:',fm(1)%b1  
!     print *,'fm b1:',fm(2)%b1  
!     print '(Z16.16)',loc(fm (1)%b1  )
!     print '(Z16.16)',loc(fm (2)%b1  )

  allocate( tmp(2), source=fm)

if (size(tmp)/=2) print *,9001
if (tmp(1)%b1/=201) then
     print *,'error '
     print *,'tmp b1:',tmp(1)%b1  
     print *,'tmp b1:',tmp(2)%b1  
     print '(Z16.16)',loc(tmp(1)%b1  )
     print '(Z16.16)',loc(tmp(2)%b1  )
endif

end
end


use m1
  type (base)            ,target::fm(2)
  class(base)            ,pointer::p (:)
     fm(1)%b1   =201
     fm(2)%b1   =202
!print *,'start TARGET'
call s1(fm)
!print *,'start POINTER'
p=>fm
call s1(p )
print *,'sngg430p : pass'
end
