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
if (fm(1)%b1/=201) print *,7001
if (fm(2)%b1/=202) print *,7002

  allocate( tmp(2), source=fm)

if (size(tmp)/=2) print *,9001
if (tmp(1)%b1/=201) print *,7011
if (tmp(2)%b1/=202) print *,7012
if (tmp(1)%b1/=201 .or.  tmp(2)%b1/=202) then
     print *,'tmp b1:',tmp(1)%b1  
     print *,'tmp b1:',tmp(2)%b1  
     print '(Z16.16)',loc(tmp(1)%b1  )
     print '(Z16.16)',loc(tmp(2)%b1  )
endif

end
end


use m1
  class(base),allocatable ,target::fm(:)
     allocate(fm(2))
     fm(1)%b1   =201
     fm(2)%b1   =202
call s1(fm(:))
print *,'sngg437p : pass'
end
