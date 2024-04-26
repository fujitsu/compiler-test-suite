Module m1
INTEGER :: ii,kk

type ty
    integer,allocatable :: xx
    integer :: yy
    integer , allocatable :: zz(:)
end type

type(ty), allocatable :: obj(:)
contains
Subroutine sub()
Allocate(obj(2))
Allocate(obj(1)%zz(2),obj(2)%zz(2))
Allocate(obj(1)%xx,obj(2)%xx)
  obj(1)%xx = 20
  obj(2)%xx = 20
  obj(:)%yy = 140
  obj(1)%zz(2) = 2
  obj(2)%zz(2) = 2
End subroutine
end module

use m1
call sub()

  ii = SELECTED_REAL_KIND(obj(1)%xx,obj(1)%yy,radix=obj(1)%zz(2))
  if(ii /= 16) print *,101
  kk = 1
  ii = SELECTED_REAL_KIND(obj(kk)%xx,obj(kk)%yy,radix=obj(kk)%zz(kk+1))
  if(ii /= 16) print *,102
  print *,"PASS"
END
