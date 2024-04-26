Module m1
    integer:: xx
    integer :: yy
    integer :: zz

end module

use m1
INTEGER :: ii,kk

  xx = 20 
  yy = 140
  zz = 2
  ii = SELECTED_REAL_KIND(xx,yy,radix=zz)
  if(ii /= 16) print *,101
  kk = zz
  ii = SELECTED_REAL_KIND(xx,yy,radix=kk)
  if(ii /= 16) print *,102
  print *,"PASS"
END
