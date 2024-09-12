module m1
    integer,parameter:: xx=20
    integer,parameter :: yy=140
    integer,parameter :: zz=2

end module

use m1
integer :: ii
integer,parameter::a1=  selected_real_kind(xx,yy,radix=zz)
  ii = selected_real_kind(xx,yy,radix=zz)
  if(ii /= a1) print *,"101"
  print *,"pass"
end
