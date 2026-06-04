module m1
  type x
     integer,pointer:: a(:,:,:)
     integer,pointer:: b(:,:,:)
  end type x
  type xx
     type(x),allocatable::z
  end type xx
  type(xx),allocatable::y(:)
contains
  subroutine s1()
    forall (n2=1:2)
       y(2)%z%a(1:2:1,1:2,n2+1) = y(2)%z%a(1:2:1,1:2,n2)
    end forall
  end subroutine s1
end module m1

program main
  use m1
  allocate(y(2))
  allocate(y(2)%z)
  allocate(y(2)%z%a(2,2,3),y(2)%z%b(2,2,3),source=0)
  call s1()
print *,'pass'
end program main
