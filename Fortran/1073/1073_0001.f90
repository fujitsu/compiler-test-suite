 
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
  complex*8,allocatable :: xx(:)
  complex*16,allocatable :: yy(:)
  complex*32,allocatable :: zz(:)
  complex :: ans

  allocate(xx(3))
  allocate(yy(3))
  allocate(zz(3))

  xx = (11,44)
  yy = (22,55)
  zz = (33,66)

  call sub(xx(1))
  if ( .not. all(real(xx)==11) )print *,'fail'
  if ( .not. all(imag(xx)==44) )print *,'fail'

  call subsub1(xx(2),yy(1))
  if ( .not. all(real(xx)==11) )print *,'fail'
  if ( .not. all(real(yy)==22) )print *,'fail'
  if ( .not. all(imag(xx)==44) )print *,'fail'
  if ( .not. all(imag(yy)==55) )print *,'fail'

  call subsub2(xx(3),yy(2),zz(1))
  if ( .not. all(real(xx)==11) )print *,'fail'
  if ( .not. all(real(yy)==22) )print *,'fail'
  if ( .not. all(real(zz)==33) )print *,'fail'
  if ( .not. all(imag(xx)==44) )print *,'fail'
  if ( .not. all(imag(yy)==55) )print *,'fail'
  if ( .not. all(imag(zz)==66) )print *,'fail'

  ans = func(xx(2),yy(1),zz(3))
  if (real(ans)/=6)print *,'fail'
  if (imag(ans)/=15)print *,'fail'
  if ( .not. all(real(xx)==11) )print *,'fail'
  if ( .not. all(real(yy)==22) )print *,'fail'
  if ( .not. all(real(zz)==33) )print *,'fail'
  if ( .not. all(imag(xx)==44) )print *,'fail'
  if ( .not. all(imag(yy)==55) )print *,'fail'
  if ( .not. all(imag(zz)==66) )print *,'fail'

  print *,'pass'
end program main
