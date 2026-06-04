
module m
contains
  subroutine foo(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
    complex*32,value :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10
    a1 = a1 + (100, 200)
    a2 = a2 + (200, 300)
    a3 = a3 + (300, 400)
    a4 = a4 + (400, 500)
    a5 = a5 + (500, 600)
    a6 = a6 + (600, 700)
    a7 = a7 + (700, 800)
    a8 = a8 + (800, 900)
    a9 = a9 + (900, 1000)
    a10 = a10 + (1000, 1100)
    if (a1/=(200, 400)) print *,'fail'
    if (a2/=(400, 600)) print *,'fail'
    if (a3/=(600, 800)) print *,'fail'
    if (a4/=(800, 1000)) print *,'fail'
    if (a5/=(1000, 1200)) print *,'fail'
    if (a6/=(1200, 1400)) print *,'fail'
    if (a7/=(1400, 1600)) print *,'fail'
    if (a8/=(1600, 1800)) print *,'fail'
    if (a9/=(1800, 2000)) print *,'fail'
    if (a10/=(2000, 2200)) print *,'fail'
    return
    entry bar(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
    a1 = a1 + (100, 200)
    a2 = a2 + (200, 300)
    a3 = a3 + (300, 400)
    a4 = a4 + (400, 500)
    a5 = a5 + (500, 600)
    a6 = a6 + (600, 700)
    a7 = a7 + (700, 800)
    a8 = a8 + (800, 900)
    a9 = a9 + (900, 1000)
    a10 = a10 + (1000, 1100)
    if (a1/=(200, 400)) print *,'fail'
    if (a2/=(400, 600)) print *,'fail'
    if (a3/=(600, 800)) print *,'fail'
    if (a4/=(800, 1000)) print *,'fail'
    if (a5/=(1000, 1200)) print *,'fail'
    if (a6/=(1200, 1400)) print *,'fail'
    if (a7/=(1400, 1600)) print *,'fail'
    if (a8/=(1600, 1800)) print *,'fail'
    if (a9/=(1800, 2000)) print *,'fail'
    if (a10/=(2000, 2200)) print *,'fail'
    return 
  end subroutine foo

  complex*32 function func(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
    complex*32,value :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10
    a1 = a1 + (100, 200)
    a2 = a2 + (200, 300)
    a3 = a3 + (300, 400)
    a4 = a4 + (400, 500)
    a5 = a5 + (500, 600)
    a6 = a6 + (600, 700)
    a7 = a7 + (700, 800)
    a8 = a8 + (800, 900)
    a9 = a9 + (900, 1000)
    a10 = a10 + (1000, 1100)
    if (a1/=(200, 400)) print *,'fail'
    if (a2/=(400, 600)) print *,'fail'
    if (a3/=(600, 800)) print *,'fail'
    if (a4/=(800, 1000)) print *,'fail'
    if (a5/=(1000, 1200)) print *,'fail'
    if (a6/=(1200, 1400)) print *,'fail'
    if (a7/=(1400, 1600)) print *,'fail'
    if (a8/=(1600, 1800)) print *,'fail'
    if (a9/=(1800, 2000)) print *,'fail'
    if (a10/=(2000, 2200)) print *,'fail'
    func = a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8 + a9 + a10
  end function func
end module m

program main
  use m
  complex*32 :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,ans
  a1 = (100, 200)
  a2 = (200, 300)
  a3 = (300, 400)
  a4 = (400, 500)
  a5 = (500, 600)
  a6 = (600, 700)
  a7 = (700, 800)
  a8 = (800, 900)
  a9 = (900, 1000)
  a10 = (1000, 1100)
  call foo(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
  if (a1/=(100, 200)) print *,'fail'
  if (a2/=(200, 300)) print *,'fail'
  if (a3/=(300, 400)) print *,'fail'
  if (a4/=(400, 500)) print *,'fail'
  if (a5/=(500, 600)) print *,'fail'
  if (a6/=(600, 700)) print *,'fail'
  if (a7/=(700, 800)) print *,'fail'
  if (a8/=(800, 900)) print *,'fail'
  if (a9/=(900, 1000)) print *,'fail'
  if (a10/=(1000, 1100)) print *,'fail'

  call bar(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
  if (a1/=(100, 200)) print *,'fail'
  if (a2/=(200, 300)) print *,'fail'
  if (a3/=(300, 400)) print *,'fail'
  if (a4/=(400, 500)) print *,'fail'
  if (a5/=(500, 600)) print *,'fail'
  if (a6/=(600, 700)) print *,'fail'
  if (a7/=(700, 800)) print *,'fail'
  if (a8/=(800, 900)) print *,'fail'
  if (a9/=(900, 1000)) print *,'fail'
  if (a10/=(1000, 1100)) print *,'fail'

  ans = func(a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)
  if (a1/=(100, 200)) print *,'fail'
  if (a2/=(200, 300)) print *,'fail'
  if (a3/=(300, 400)) print *,'fail'
  if (a4/=(400, 500)) print *,'fail'
  if (a5/=(500, 600)) print *,'fail'
  if (a6/=(600, 700)) print *,'fail'
  if (a7/=(700, 800)) print *,'fail'
  if (a8/=(800, 900)) print *,'fail'
  if (a9/=(900, 1000)) print *,'fail'
  if (a10/=(1000, 1100)) print *,'fail'
  if (ans/=(11000, 13000)) print *,'fail'

  print *,'pass'
end program main
