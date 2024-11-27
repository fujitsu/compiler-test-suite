module m1
  type x
     integer,pointer:: a
  end type x
  type xx
     type(x),allocatable::z
  end type xx
  type(xx),allocatable::y
contains
  subroutine s1()
    y%z%a = y%z%a + y%z%a
  end subroutine s1
end module m1

program main
  use m1
  allocate(y)
  allocate(y%z)
  allocate(y%z%a)
  y%z%a = 1
  call s1()
  if (y%z%a == 2) then
     print *,"OK"
  else
     print *,"NG",y%z%a
  endif
end program main

