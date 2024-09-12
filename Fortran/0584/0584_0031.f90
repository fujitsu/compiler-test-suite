module mod
integer :: ii,kk

type ty
    integer :: xx
    integer :: yy
    integer :: zz
end type

type(ty),parameter:: obj=ty(20,2220,2)
end module
use ieee_arithmetic

use mod
integer,parameter::a1=ieee_selected_real_kind(obj%xx,obj%yy,radix=obj%zz)
integer,parameter::a2=ieee_selected_real_kind(r=obj%xx,p=obj%yy,radix=obj%zz)

 ii = ieee_selected_real_kind(obj%xx,obj%yy,radix=obj%zz)
  if(ii /= a1) print *,"101"

  ii = ieee_selected_real_kind(r=obj%xx,p=obj%yy,radix=obj%zz)
  if(ii /= a2) print *,"102"
  print *,"pass"
end
