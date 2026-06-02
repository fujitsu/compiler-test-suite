module m1
  type base
    integer::b1
  end type
contains
 subroutine s1(fm)
  class(base),pointer,intent(in) ::fm
  class(base),allocatable::tmp
!if (size(fm)/=2) print *,101
!     print *,'fm b1:',fm(1)%b1  
!     print *,'fm b1:',fm(2)%b1  
!     print '(Z16.16)',loc(fm (1)%b1  )
!     print '(Z16.16)',loc(fm (2)%b1  )
if (fm %b1/=202) print *,2001

  allocate( tmp, source=fm)

!if (size(tmp)/=2) print *,9001
     !print *,'tmp b1:',tmp(1)%b1  
     !print *,'tmp b1:',tmp%b1  
     !print '(Z16.16)',loc(tmp(1)%b1  )
     !print '(Z16.16)',loc(tmp%b1  )
if (tmp%b1/=202) print *,2002

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
call s1(v%fm(2))
print *,'sngg441p : pass'
end
