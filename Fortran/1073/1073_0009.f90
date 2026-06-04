 
module mod
contains
  subroutine sub(xx)
    complex*8,value :: xx
    complex*16,value :: yy
    complex*32,value :: zz
    if (real(xx)/=11)print *,'fail'
    if (imag(xx)/=44)print *,'fail'
    xx = -xx
    return 
    entry subsub1(xx,yy)
    if (real(xx)/=11)print *,'fail'
    if (real(yy)/=22)print *,'fail'
    if (imag(xx)/=44)print *,'fail'
    if (imag(yy)/=55)print *,'fail'
    xx = -xx
    yy = -yy
    return 
    entry subsub2(xx,yy,zz)
    if (real(xx)/=11)print *,'fail'
    if (real(yy)/=22)print *,'fail'
    if (real(zz)/=33)print *,'fail'
    if (imag(xx)/=44)print *,'fail'
    if (imag(yy)/=55)print *,'fail'
    if (imag(zz)/=66)print *,'fail'
    xx = -xx
    yy = -yy
    zz = -zz
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
    xx = -xx
    yy = -yy
    zz = -zz
    func = xx + yy + zz
    return
  end function func
end module mod

program main
  use mod
  complex*8 :: xx
  complex*16 :: yy
  complex*32 :: zz
  complex :: ans

  xx = (11,44)
  yy = (22,55)
  zz = (33,66)

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
  if (real(ans)/=-66)print *,'fail'
  if (imag(ans)/=-165)print *,'fail'
  if (real(xx)/=11)print *,'fail'
  if (real(yy)/=22)print *,'fail'
  if (real(zz)/=33)print *,'fail'
  if (imag(xx)/=44)print *,'fail'
  if (imag(yy)/=55)print *,'fail'
  if (imag(zz)/=66)print *,'fail'

  print *,'pass'
end program main
