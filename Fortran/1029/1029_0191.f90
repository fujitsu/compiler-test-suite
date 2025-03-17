module mod
  type z
    logical(2),allocatable::l1(:)
    logical(2),allocatable::l2(:)
    logical(2),allocatable::l3(:)
    logical(2),allocatable::l4(:)
  end type
end module
module modf
  interface
    function func(i) result(a)
      use mod
      integer::i
      type(z)::a
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
 type(z)::a

  i=0
  do while (.not. (allocated(a%l1)            ) .or. &
            .not. (allocated(a%l2)            ) .or. &
            .not. (allocated(a%l3)            ) .or. &
            .not. (allocated(a%l4)            ) )
    i=i+1
    a=func(i)
  end do
  if (      (.not. (allocated(a%l1).and.a%l1(1)) .or. &
             .not. (allocated(a%l2).and.a%l2(1)) .or. &
             .not. (allocated(a%l3).and.a%l3(1)) .or. &
             .not. (allocated(a%l4).and.a%l4(1)) )) write(6,*) "NG"
  if (.not.a%l1(1)) write(6,*) "NG"
  if (.not.a%l1(1).and..not.a%l2(1)) write(6,*) "NG"
  if (.not.a%l1(1).and..not.a%l2(1).and..not.a%l3(1)) write(6,*) "NG"
  if (.not.a%l1(1).and..not.a%l2(1).and. &
      .not.a%l3(1).and..not.a%l4(1)) write(6,*) "NG"
  if (a%l1(1).and.a%l2(1).and.a%l3(1).and.a%l4(1)) goto 100
    write(6,*) "NG"
  100 continue
  if (i/=4) write(6,*) "NG"
end subroutine

function func(i) result(a)
  use mod
  integer::i
  type(z)::a

  if (i==1) then
    allocate(a%l1(1)) ; a%l1(1)=.true.
  endif
  if (i==2) then
    allocate(a%l1(1)) ; a%l1(1)=.true.
    allocate(a%l2(1)) ; a%l2(1)=.true.
  endif
  if (i==3) then
    allocate(a%l1(1)) ; a%l1(1)=.true.
    allocate(a%l2(1)) ; a%l2(1)=.true.
    allocate(a%l3(1)) ; a%l3(1)=.true.
  endif
  if (i==4) then
    allocate(a%l1(1)) ; a%l1(1)=.true.
    allocate(a%l2(1)) ; a%l2(1)=.true.
    allocate(a%l3(1)) ; a%l3(1)=.true.
    allocate(a%l4(1)) ; a%l4(1)=.true.
  endif
end function
