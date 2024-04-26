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
module m2
 private
 type,public:: w
   integer:: x1
   contains
     procedure:: q
  end type
  contains
   subroutine q(yv)
    class(w):: yv
    yv%x1=3
   end subroutine
end
module m21
  use m2,only: w
  type (w):: v3
end
module m22
  use m2
  type (w):: v3
end
module m101
use m11
contains
subroutine m101s
call v1%y()
if (v1%x1/=2) print *,101
end subroutine 
end
module m102
use m11,only:v1
private
public m102s,v1
contains
subroutine m102s
call v1%y()
if (v1%x1/=2) print *,102
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
module m113
use m101
private
public m113s
contains
subroutine m113s
call m101s
call v1%y()
if (v1%x1/=2) print *,111
end subroutine 
end
module m114
use m101
use m101,only:m101s
private
public m114s
contains
subroutine m114s
call m101s
call v1%y()
if (v1%x1/=2) print *,111
end subroutine 
end
module m121
use m102,only:v1
use m102,only:m102s
private
public m121s
contains
subroutine m121s
call m102s
call v1%y()
if (v1%x1/=2) print *,111
end subroutine 
end
module m122
use m102,only:m102s
use m102
private
public m122s
contains
subroutine m122s
call m102s
call v1%y()
if (v1%x1/=2) print *,111
end subroutine 
end
module m123
use m102
private
public m123s
contains
subroutine m123s
call m102s
call v1%y()
if (v1%x1/=2) print *,111
end subroutine 
end
module m124
use m102
use m102,only:m102s
private
public m124s
contains
subroutine m124s
call m102s
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
module m1002
use m112
contains
subroutine m1002s
call m112s
end subroutine 
end
module m1003
use m113
contains
subroutine m1003s
call m113s
end subroutine 
end
module m1004
use m114
contains
subroutine m1004s
call m114s
end subroutine 
end
module m10001
use m1001
use m1002
use m1003
use m1004
contains
subroutine m10001s
call m1001s
call m1002s
call m1003s
call m1004s
end subroutine 
end
use m10001
call m10001s
print *,'pass'
end
