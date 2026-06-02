
module mod
contains
  subroutine sub(a1,a2,a3,a4,a5,a6,a7,a8)
    complex*32,value :: a1,a2,a3,a4,a5,a6,a7,a8
    if (a1/=(11,22)) print *,'fail'
    if (a2/=(22,33)) print *,'fail'
    if (a3/=(33,44)) print *,'fail'
    if (a4/=(44,55)) print *,'fail'
    if (a5/=(55,66)) print *,'fail'
    if (a6/=(66,77)) print *,'fail'
    if (a7/=(77,88)) print *,'fail'
    if (a8/=(88,99)) print *,'fail'
    a1 = (1,2)
    a2 = (2,3)
    a3 = (3,4)
    a4 = (4,5)
    a5 = (5,6)
    a6 = (6,7)
    a7 = (7,8)
    a8 = (8,9)
    if (a1/=(1,2)) print *,'fail'
    if (a2/=(2,3)) print *,'fail'
    if (a3/=(3,4)) print *,'fail'
    if (a4/=(4,5)) print *,'fail'
    if (a5/=(5,6)) print *,'fail'
    if (a6/=(6,7)) print *,'fail'
    if (a7/=(7,8)) print *,'fail'
    if (a8/=(8,9)) print *,'fail'
    return
    entry foo(a1,a2,a3,a4,a5,a6,a7,a8)
    if (a1/=(11,22)) print *,'fail'
    if (a2/=(22,33)) print *,'fail'
    if (a3/=(33,44)) print *,'fail'
    if (a4/=(44,55)) print *,'fail'
    if (a5/=(55,66)) print *,'fail'
    if (a6/=(66,77)) print *,'fail'
    if (a7/=(77,88)) print *,'fail'
    if (a8/=(88,99)) print *,'fail'
    a1 = (1,2)
    a2 = (2,3)
    a3 = (3,4)
    a4 = (4,5)
    a5 = (5,6)
    a6 = (6,7)
    a7 = (7,8)
    a8 = (8,9)
    if (a1/=(1,2)) print *,'fail'
    if (a2/=(2,3)) print *,'fail'
    if (a3/=(3,4)) print *,'fail'
    if (a4/=(4,5)) print *,'fail'
    if (a5/=(5,6)) print *,'fail'
    if (a6/=(6,7)) print *,'fail'
    if (a7/=(7,8)) print *,'fail'
    if (a8/=(8,9)) print *,'fail'
  end subroutine sub

  complex*32 function func(a1,a2,a3,a4,a5,a6,a7,a8)
    complex*32,value :: a1,a2,a3,a4,a5,a6,a7,a8
    if (a1/=(11,22)) print *,'fail'
    if (a2/=(22,33)) print *,'fail'
    if (a3/=(33,44)) print *,'fail'
    if (a4/=(44,55)) print *,'fail'
    if (a5/=(55,66)) print *,'fail'
    if (a6/=(66,77)) print *,'fail'
    if (a7/=(77,88)) print *,'fail'
    if (a8/=(88,99)) print *,'fail'
    a1 = (1,2)
    a2 = (2,3)
    a3 = (3,4)
    a4 = (4,5)
    a5 = (5,6)
    a6 = (6,7)
    a7 = (7,8)
    a8 = (8,9)
    if (a1/=(1,2)) print *,'fail'
    if (a2/=(2,3)) print *,'fail'
    if (a3/=(3,4)) print *,'fail'
    if (a4/=(4,5)) print *,'fail'
    if (a5/=(5,6)) print *,'fail'
    if (a6/=(6,7)) print *,'fail'
    if (a7/=(7,8)) print *,'fail'
    if (a8/=(8,9)) print *,'fail'
    func = a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8
  end function func
end module mod

program main
  use mod
  complex*32 :: a1,a2,a3,a4,a5,a6,a7,a8,ans

  a1 = (11,22)
  a2 = (22,33)
  a3 = (33,44)
  a4 = (44,55)
  a5 = (55,66)
  a6 = (66,77)
  a7 = (77,88)
  a8 = (88,99)

  call sub(a1,a2,a3,a4,a5,a6,a7,a8)
  if (a1/=(11,22)) print *,'fail'
  if (a2/=(22,33)) print *,'fail'
  if (a3/=(33,44)) print *,'fail'
  if (a4/=(44,55)) print *,'fail'
  if (a5/=(55,66)) print *,'fail'
  if (a6/=(66,77)) print *,'fail'
  if (a7/=(77,88)) print *,'fail'
  if (a8/=(88,99)) print *,'fail'

  call foo(a1,a2,a3,a4,a5,a6,a7,a8)
  if (a1/=(11,22)) print *,'fail'
  if (a2/=(22,33)) print *,'fail'
  if (a3/=(33,44)) print *,'fail'
  if (a4/=(44,55)) print *,'fail'
  if (a5/=(55,66)) print *,'fail'
  if (a6/=(66,77)) print *,'fail'
  if (a7/=(77,88)) print *,'fail'
  if (a8/=(88,99)) print *,'fail'
  
  ans = func(a1,a2,a3,a4,a5,a6,a7,a8)
  if (ans/=(36,44)) print *,'fail'  
  if (a1/=(11,22)) print *,'fail'  
  if (a2/=(22,33)) print *,'fail'
  if (a3/=(33,44)) print *,'fail'
  if (a4/=(44,55)) print *,'fail'
  if (a5/=(55,66)) print *,'fail'
  if (a6/=(66,77)) print *,'fail'
  if (a7/=(77,88)) print *,'fail'
  if (a8/=(88,99)) print *,'fail'

  print *,'pass'
end program main
