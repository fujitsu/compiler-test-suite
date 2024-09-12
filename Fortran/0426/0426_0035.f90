module m1
private
public:: v
 type x
   integer:: x1
   contains
     procedure:: y
     generic :: yy=>y
  end type
  type (x):: v
  contains
   subroutine y(yv)
    class(x):: yv
yv%x1=2
   end subroutine
end
module m2
 type x
   integer:: x1
   contains
     procedure:: y
     generic :: yy=>y
  end type
  type (x):: v
  contains
   subroutine y(yv)
    class(x):: yv
yv%x1=2
   end subroutine
end
module ms1
use m1
end
module ms2
use m1,only:v
private
public::v
end
module ms3
use m2
end
module ms4
use m2,only:v
private
public::v
end

subroutine s1
use ms1
call v%yy()
if (v%x1/=2) print *,201
v%x1=0
call v%y()
if (v%x1/=2) print *,201
end
subroutine s2
use ms2,only:v
call v%yy()
if (v%x1/=2) print *,201
v%x1=0
call v%y()
if (v%x1/=2) print *,201
end
subroutine s3
use ms3
call v%yy()
if (v%x1/=2) print *,201
v%x1=0
call v%y()
if (v%x1/=2) print *,201
end
subroutine s4
use ms4,only:v
call v%yy()
if (v%x1/=2) print *,201
v%x1=0
call v%y()
if (v%x1/=2) print *,201
end
call s1
call s2
call s3
call s4
print *,'pass'
end
