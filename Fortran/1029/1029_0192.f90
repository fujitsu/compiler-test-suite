module mod
  type z
    logical(2),allocatable::l(:)
  end type
end module
module modf
  interface
    function func() result(b)
      use mod
      type(z)::b
    end function
  end interface
end module

program abc
  call sub()
  print *,'pass'
end program

subroutine sub()
 use mod
 use modf
 type(z)::a(4)

  i=0
  do while (.not. (allocated(a(4)%l)              ) .or. &
            .not. (allocated(a(3)%l)              ) .or. &
            .not. (allocated(a(2)%l)              ) .or. &
            .not. (allocated(a(1)%l)              ) )
    i=i+1
    a(i)=func()
  end do
  if       (.not. (allocated(a(4)%l).and.a(4)%l(1)) .or. &
            .not. (allocated(a(3)%l).and.a(3)%l(1)) .or. &
            .not. (allocated(a(2)%l).and.a(2)%l(1)) .or. &
            .not. (allocated(a(1)%l).and.a(1)%l(1)) )write(6,*) "NG"
  if (.not.a(1)%l(1)) write(6,*) "NG"
  if (.not.a(1)%l(1).and..not.a(2)%l(1)) write(6,*) "NG"
  if (.not.a(1)%l(1).and..not.a(2)%l(1).and..not.a(3)%l(1)) write(6,*) "NG"
  if (.not.a(1)%l(1).and..not.a(2)%l(1).and. &
      .not.a(3)%l(1).and..not.a(4)%l(1)) write(6,*) "NG"
  if (a(1)%l(1).and.a(2)%l(1).and.a(3)%l(1).and.a(4)%l(1)) goto 100
    write(6,*) "NG"
  100 continue
  if (i/=4) write(6,*) "NG"
end subroutine

function func() result(b)
  use mod
  type(z)::b

  allocate(b%l(1))
  b%l(1)=.true.
end function
