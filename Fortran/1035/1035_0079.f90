module m
type a
  integer ::x3
end type
type aa
  type(a),pointer::x1,x2(:)
  integer ::x3
end type
interface s
 module procedure saa,sa
end interface
contains
subroutine saa(p)
type(aa)::p(1)
if (p(1)%x3/=1)then
  write(6,*) "NG"
  print *,'error-1'
endif
end subroutine
subroutine sa(p)
type(a)::p(1)
if (p(1)%x3/=1)then
  write(6,*) "NG"
  print *,'error-2'
endif
end subroutine
function fs()
type(aa),pointer::fs
allocate(fs)
fs%x3=1
end function
function fa()
type(aa),pointer::fa(:)
allocate(fa(1))
fa(1)%x3=1
end function
end
use m
type(aa),pointer::x1,x2(:)
type(aa)        ::y1,y2(1)
kk=1;kkk=1
allocate(x1);x1%x3=1
call s((/(x1,k=kk,kkk)/))
y1=x1
call s((/(y1,k=kk,kkk)/))
allocate(x2(1));x2(1)%x3=1
call s((/(x2,k=kk,kkk)/))
y2=(/(x1,k=kk,kkk)/)
call s((/(y2,k=kk,kkk)/))
call s((/(x2(1),k=kk,kkk)/))
y2=(/(x2(1),k=kk,kkk)/)
call s((/(y2,k=kk,kkk)/))
allocate(x1%x1);x1%x1%x3=1
call s((/(x1%x1,k=kk,kkk)/))
allocate(y1%x1)
y1%x1=x1%x1
call s((/(y1%x1,k=kk,kkk)/))
allocate(x2(1)%x2(1));x2(1)%x2(1)%x3=1
call s((/(x2(1)%x2(1),k=kk,kkk)/))
allocate(y2(1)%x2(1))
y2(1)%x2=(/(x1%x1,k=kk,kkk)/)
call s((/(y2(1)%x2,k=kk,kkk)/))
call s((/(x2(1)%x2(1),k=kk,kkk)/))
y2(1)%x2=(/(x2(1)%x2(1),k=kk,kkk)/)
call s((/(y2(1)%x2,k=kk,kkk)/))
call s((/(fs(),k=kk,kkk)/))
y1=fs()
call s((/(y1,k=kk,kkk)/))
y2=(/(fs(),k=kk,kkk)/)
call s((/(y2,k=kk,kkk)/))
call s((/(fa(),k=kk,kkk)/))
y2=fa()
call s((/(y2,k=kk,kkk)/))
y2=(/(fa(),k=kk,kkk)/)
call s((/(y2,k=kk,kkk)/))
print *,'pass'
end
