
module mod
contains
  subroutine sub(a1,a2,a3,a4)
    complex*32,value :: a1,a2,a3,a4
    if (a1/=(11,22)) print *,'fail'
    if (a2/=(22,33)) print *,'fail'
    if (a3/=(33,44)) print *,'fail'
    if (a4/=(44,55)) print *,'fail'
    a1 = (1,2)
    a2 = (2,3)
    a3 = (3,4)
    a4 = (4,5)
    if (a1/=(1,2)) print *,'fail'
    if (a2/=(2,3)) print *,'fail'
    if (a3/=(3,4)) print *,'fail'
    if (a4/=(4,5)) print *,'fail'
    return
    entry foo(a1,a2,a3,a4)
    if (a1/=(11,22)) print *,'fail'
    if (a2/=(22,33)) print *,'fail'
    if (a3/=(33,44)) print *,'fail'
    if (a4/=(44,55)) print *,'fail'
    a1 = (1,2)
    a2 = (2,3)
    a3 = (3,4)
    a4 = (4,5)
    if (a1/=(1,2)) print *,'fail'
    if (a2/=(2,3)) print *,'fail'
    if (a3/=(3,4)) print *,'fail'
    if (a4/=(4,5)) print *,'fail'
  end subroutine sub

  complex*32 function func(a1,a2,a3,a4)
    complex*32,value :: a1,a2,a3,a4
    if (a1/=(11,22)) print *,'fail'
    if (a2/=(22,33)) print *,'fail'
    if (a3/=(33,44)) print *,'fail'
    if (a4/=(44,55)) print *,'fail'
    a1 = (1,2)
    a2 = (2,3)
    a3 = (3,4)
    a4 = (4,5)
    if (a1/=(1,2)) print *,'fail'
    if (a2/=(2,3)) print *,'fail'
    if (a3/=(3,4)) print *,'fail'
    if (a4/=(4,5)) print *,'fail'
    func = a1 + a2 + a3 + a4
  end function func
end module mod

program main
  use mod
  complex*32 :: a1,a2,a3,a4,ans

  a1 = (11,22)
  a2 = (22,33)
  a3 = (33,44)
  a4 = (44,55)

  call sub(a1,a2,a3,a4)
  if (a1/=(11,22)) print *,'fail'
  if (a2/=(22,33)) print *,'fail'
  if (a3/=(33,44)) print *,'fail'
  if (a4/=(44,55)) print *,'fail'

  call foo(a1,a2,a3,a4)
  if (a1/=(11,22)) print *,'fail'
  if (a2/=(22,33)) print *,'fail'
  if (a3/=(33,44)) print *,'fail'
  if (a4/=(44,55)) print *,'fail'
  
  ans = func(a1,a2,a3,a4)
  if (ans/=(10,14)) print *,'fail'  
  if (a1/=(11,22)) print *,'fail'  
  if (a2/=(22,33)) print *,'fail'
  if (a3/=(33,44)) print *,'fail'
  if (a4/=(44,55)) print *,'fail'

  print *,'pass'
end program main
