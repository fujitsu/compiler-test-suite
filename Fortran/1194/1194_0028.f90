module m1
  type base
    integer::b1
  end type
contains
 subroutine s1(fm)
  class(base),pointer,intent(in) ::fm(:)
  class(base),allocatable::tmp(:)
if (size(fm)/=2) print *,101
if (fm(1)%b1/=201) print *,7001
if (fm(2)%b1/=202) print *,7002
!     print *,'fm b1:',fm(1)%b1  
!     print *,'fm b1:',fm(2)%b1  
!     print '(Z16.16)',loc(fm (1)%b1  )
!     print '(Z16.16)',loc(fm (2)%b1  )

  allocate( tmp(2), source=fm)

if (size(tmp)/=2) print *,9001
if (tmp(1)%b1/=201) print *,7001
if (tmp(2)%b1/=202) print *,7002
if (tmp(1)%b1/=201.or. tmp(2)%b1/=202) then
     print *,'tmp b1:',tmp(1)%b1  
     print *,'tmp b1:',tmp(2)%b1  
     print '(Z16.16)',loc(tmp(1)%b1  )
     print '(Z16.16)',loc(tmp(2)%b1  )
end if

end
end


use m1
  type x
     integer::x1
      type (base)            ::fm(2)
  end type
  type(x),target::v
     v%fm(1)%b1   =201
     v%fm(2)%b1   =202
call s1(v%fm(:))
print *,'sngg440p : pass'
end
