
module mod
contains
  subroutine sub(a1)
    complex*32,value :: a1
    if (a1/=(11,22)) print *,'fail'
    a1 = (1,2)
    if (a1/=(1,2)) print *,'fail'
    return
    entry foo(a1)
    if (a1/=(11,22)) print *,'fail'
    a1 = (1,2)
    if (a1/=(1,2)) print *,'fail'
  end subroutine sub

  complex*32 function func(a1)
    complex*32,value :: a1
    if (a1/=(11,22)) print *,'fail'
    a1 = (1,2)
    if (a1/=(1,2)) print *,'fail'
    func = a1
  end function func
end module mod

program main
  use mod
  complex*32 :: a1,ans

  a1 = (11,22)

  call sub(a1)
  if (a1/=(11,22)) print *,'fail'

  call foo(a1)
  if (a1/=(11,22)) print *,'fail'
  
  ans = func(a1)
  if (ans/=(1,2)) print *,'fail'  
  if (a1/=(11,22)) print *,'fail'  

  print *,'pass'
end program main
