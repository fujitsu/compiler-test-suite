module mod
  type z
    integer,allocatable,dimension(:)::za
  end type
end module

program main
 call test()
 print *,'pass'
end program main

subroutine test()
  use mod
  type (z),allocatable,dimension(:)::a

  interface
    subroutine allo1(a)
      use mod
      type(z),allocatable,dimension(:)::a
    end subroutine
  end interface

  interface
    subroutine allo2(a)
      use mod
      type(z),allocatable,dimension(:)::a
    end subroutine
  end interface

  interface
    subroutine allo3(a)
      use mod
      type(z),allocatable,dimension(:)::a
    end subroutine
  end interface

  interface
    subroutine allo4(a)
      use mod
      type(z),allocatable,dimension(:)::a
    end subroutine
  end interface

  interface
    subroutine allo5(a)
      use mod
      type(z),allocatable,dimension(:)::a
    end subroutine
  end interface

  interface
    subroutine allo6(a)
      use mod
      type(z),allocatable,dimension(:)::a
    end subroutine
  end interface

  interface
    subroutine allo7(a)
      use mod
      type(z),allocatable,dimension(:)::a
    end subroutine
  end interface

  interface
    subroutine allo8(a)
      use mod
      type(z),allocatable,dimension(:)::a
    end subroutine
  end interface

  allocate(a(2))
  allocate(a(1)%za(2))
  allocate(a(2)%za(2))
  a(1)%za=(/1,2/)
  a(2)%za=(/2,3/)

  call allo1(a)
  call allo2(a)
  call allo3(a)
  call allo4(a)
  call allo5(a)
  call allo6(a)
  call allo7(a)
  call allo8(a)

end subroutine

subroutine allo1(a)
  use mod
  type(z),allocatable,dimension(:)::a
  type(z),allocatable,dimension(:)::b
  allocate(b(2))

  b=a

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2,3/))) write(6,*) "NG"
end subroutine

subroutine allo2(a)
  use mod
  type(z),allocatable,dimension(:)::a
  type(z),allocatable,dimension(:)::b
  allocate(b(2))

  b(:)=a(:)

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2,3/))) write(6,*) "NG"
end subroutine

subroutine allo3(a)
  use mod
  type(z),allocatable,dimension(:)::a
  type(z),allocatable,dimension(:)::b
  allocate(b(2))

  b(1:2:1)=a(1:2:1)

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2,3/))) write(6,*) "NG"
end subroutine

subroutine allo4(a)
  use mod
  type(z),allocatable,dimension(:)::a
  type(z),allocatable,dimension(:)::b
  allocate(b(2))

  b(1:2:1)=a(2:1:-1)

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(2)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(1)%za/=(/2,3/))) write(6,*) "NG"
end subroutine

subroutine allo5(a)
  use mod
  type(z),allocatable,dimension(:)::a
  type(z),allocatable,dimension(:)::b
  allocate(b(2))

  b(:)=a(2:1:-1)

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(2)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(1)%za/=(/2,3/))) write(6,*) "NG"
end subroutine

subroutine allo6(a)
  use mod
  type(z),allocatable,dimension(:)::a
  type(z),allocatable,dimension(:)::b
  allocate(b(2))

  b(:)=a(2)

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/2,3/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2,3/))) write(6,*) "NG"
end subroutine

subroutine allo7(a)
  use mod
  type(z),allocatable,dimension(:)::a
  type(z),allocatable,dimension(:)::b
  allocate(b(2))

  do i=1,2
    b(i)=a(i)
  enddo

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2,3/))) write(6,*) "NG"
end subroutine

subroutine allo8(a)
  use mod
  type(z),allocatable,dimension(:)::a
  type(z),allocatable,dimension(:)::b
  allocate(b(2))

  do i=1,2
    b(i)=a(3-i)
  enddo

  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(2)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(1)%za/=(/2,3/))) write(6,*) "NG"
end subroutine
