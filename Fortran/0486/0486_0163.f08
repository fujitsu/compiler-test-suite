module m1
  type x
     integer,pointer:: a
  end type x
  type xx
     type(x),allocatable::z
  end type xx
  type(xx)::y,yy
contains
  subroutine s1()
    y=yy
  end subroutine s1
end module m1

program main
  use m1
  allocate(y%z)
  allocate(y%z%a)
  y = yy
  call s1()
print *,'pass'
end program main
