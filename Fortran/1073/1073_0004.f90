
module mod
contains
  subroutine sub(a1,a2)
    complex*32,value :: a1,a2
    if (a1/=(11,22)) print *,'fail'
    if (a2/=(22,33)) print *,'fail'
    a1 = (1,2)
    a2 = (2,3)
    if (a1/=(1,2)) print *,'fail'
    if (a2/=(2,3)) print *,'fail'
    return
    entry foo(a1,a2)
    if (a1/=(11,22)) print *,'fail'
    if (a2/=(22,33)) print *,'fail'
    a1 = (1,2)
    a2 = (2,3)
    if (a1/=(1,2)) print *,'fail'
    if (a2/=(2,3)) print *,'fail'
  end subroutine sub

  complex*32 function func(a1,a2)
    complex*32,value :: a1,a2
    if (a1/=(11,22)) print *,'fail'
    if (a2/=(22,33)) print *,'fail'
    a1 = (1,2)
    a2 = (2,3)
    if (a1/=(1,2)) print *,'fail'
    if (a2/=(2,3)) print *,'fail'
    func = a1 + a2
  end function func
end module mod

program main
  use mod
  complex*32 :: a1,a2,ans

  a1 = (11,22)
  a2 = (22,33)

  call sub(a1,a2)
  if (a1/=(11,22)) print *,'fail'
  if (a2/=(22,33)) print *,'fail'

  call foo(a1,a2)
  if (a1/=(11,22)) print *,'fail'
  if (a2/=(22,33)) print *,'fail'
  
  ans = func(a1,a2)
  if (ans/=(3,5)) print *,'fail'  
  if (a1/=(11,22)) print *,'fail'  
  if (a2/=(22,33)) print *,'fail'

  print *,'pass'
end program main
