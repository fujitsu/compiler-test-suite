 
module mod
contains
  subroutine sub(xx)
    complex*8,value :: xx
    complex*16,value :: yy
    complex*32,value :: zz
    if (real(xx)/=11)print *,'fail'
    if (imag(xx)/=44)print *,'fail'
    xx = (1,4)
    return 
    entry subsub1(xx,yy)
    if (real(xx)/=11)print *,'fail'
    if (real(yy)/=22)print *,'fail'
    if (imag(xx)/=44)print *,'fail'
    if (imag(yy)/=55)print *,'fail'
    xx = (1,4)
    yy = (2,5)
    return 
    entry subsub2(xx,yy,zz)
    if (real(xx)/=11)print *,'fail'
    if (real(yy)/=22)print *,'fail'
    if (real(zz)/=33)print *,'fail'
    if (imag(xx)/=44)print *,'fail'
    if (imag(yy)/=55)print *,'fail'
    if (imag(zz)/=66)print *,'fail'
    xx = (1,4)
    yy = (2,5)
    zz = (3,6)
    return 
  end subroutine sub

  complex function func(xx,yy,zz)
    complex*8,value :: xx
    complex*16,value :: yy
    complex*32,value :: zz
    if (real(xx)/=11)print *,'fail'
    if (real(yy)/=22)print *,'fail'
    if (real(zz)/=33)print *,'fail'
    if (imag(xx)/=44)print *,'fail'
    if (imag(yy)/=55)print *,'fail'
    if (imag(zz)/=66)print *,'fail'
    xx = (1,4)
    yy = (2,5)
    zz = (3,6)
    func = xx + yy + zz
    return
  end function func
end module mod

program main
  use mod
  complex*8,pointer :: xx
  complex*16,pointer :: yy
  complex*32,pointer :: zz
  complex*8,target :: ii
  complex*16,target :: jj
  complex*32,target :: kk
  complex :: ans

  ii = (11,44)
  jj = (22,55)
  kk = (33,66)

  xx => ii
  yy => jj
  zz => kk

  call sub(xx)
  if (real(xx)/=11)print *,'fail'
  if (imag(xx)/=44)print *,'fail'

  call subsub1(xx,yy)
  if (real(xx)/=11)print *,'fail'
  if (real(yy)/=22)print *,'fail'
  if (imag(xx)/=44)print *,'fail'
  if (imag(yy)/=55)print *,'fail'

  call subsub2(xx,yy,zz)
  if (real(xx)/=11)print *,'fail'
  if (real(yy)/=22)print *,'fail'
  if (real(zz)/=33)print *,'fail'
  if (imag(xx)/=44)print *,'fail'
  if (imag(yy)/=55)print *,'fail'
  if (imag(zz)/=66)print *,'fail'

  ans = func(xx,yy,zz)
  if (real(ans)/=6)print *,'fail'
  if (imag(ans)/=15)print *,'fail'
  if (real(xx)/=11)print *,'fail'
  if (real(yy)/=22)print *,'fail'
  if (real(zz)/=33)print *,'fail'
  if (imag(xx)/=44)print *,'fail'
  if (imag(yy)/=55)print *,'fail'
  if (imag(zz)/=66)print *,'fail'

  print *,'pass'
end program main
