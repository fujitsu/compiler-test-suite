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
module m110
  use m1,only: x
  type (x):: v1
private
end
module m101
use m11
use m110
contains
subroutine m101s
call v1%y()
if (v1%x1/=2) print *,101
end subroutine 
end
module m111
use m101,only:v1
use m101,only:m101s
private
public m111s
contains
subroutine m111s
call m101s
call v1%y()
if (v1%x1/=2) print *,111
end subroutine 
end
module m1001
use m111
contains
subroutine m1001s
call m111s
end subroutine 
end
use m1001
call m1001s
print *,'pass'
end
