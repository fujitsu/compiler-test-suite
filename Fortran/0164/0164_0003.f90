module m1
 private
 type,public:: x
   integer:: x1
   contains
     procedure:: y
     generic :: yy=>y
  end type
  contains
   subroutine y(yv)
    class(x):: yv
    yv%x1=2
   end subroutine
end
module m11
  use m1,only: x
  type (x):: v1
end
module m12
  use m1
  type (x):: v2
end
module m101
use m11
contains
subroutine m101s
call v1%y()
if (v1%x1/=2) print *,101
end subroutine 
end
module m112
use m101,only:m101s
use m101
private
public m112s
contains
subroutine m112s
call m101s
call v1%y()
if (v1%x1/=2) print *,111
end subroutine 
end
module m1002
use m112
contains
subroutine m1002s
call m112s
end subroutine 
end
use m1002
print *,'pass'
end
