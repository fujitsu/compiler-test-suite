INTEGER :: ii,kk

type ty
    integer,allocatable :: xx
    integer :: yy
    integer , allocatable :: zz(:)
end type

type(ty), allocatable :: obj(:)
Allocate(obj(2))
Allocate(obj(1)%zz(2),obj(2)%zz(2))
Allocate(obj(1)%xx,obj(2)%xx)
  obj(1)%xx = 20
  obj(2)%xx = 20
  obj(:)%yy = 140
  obj(1)%zz(2) = 2
  obj(2)%zz(2) = 2
call sub(obj)

contains
Subroutine sub(dmy)
  type(ty) :: dmy(2)
  ii = SELECTED_REAL_KIND(dmy(1)%xx,dmy(1)%yy,radix=dmy(1)%zz(2))
  if(ii /= 16) print *,101
  kk = 1
  ii = SELECTED_REAL_KIND(dmy(kk)%xx,dmy(kk)%yy,radix=dmy(kk)%zz(kk+1))
  if(ii /= 16) print *,102
  print *,"PASS"
End subroutine
END
