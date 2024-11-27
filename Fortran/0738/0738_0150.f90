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
  type (z),allocatable,dimension(:)::b
  type (z)            ,dimension(2)::a

  allocate(a(1)%za(2))
  allocate(a(2)%za(2))
  a(1)%za=(/1,2/)
  a(2)%za=(/2,3/)
  allocate(b(2))

  call allo1(a,b)
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2,3/))) write(6,*) "NG"
  deallocate(b(1)%za)
  deallocate(b(2)%za)

  call allo2(a,b)
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2,3/))) write(6,*) "NG"
  deallocate(b(1)%za)
  deallocate(b(2)%za)

  call allo3(a,b)
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2,3/))) write(6,*) "NG"
  deallocate(b(1)%za)
  deallocate(b(2)%za)

  call allo4(a,b)
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(2)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(1)%za/=(/2,3/))) write(6,*) "NG"
  deallocate(b(1)%za)
  deallocate(b(2)%za)

  call allo5(a,b)
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(2)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(1)%za/=(/2,3/))) write(6,*) "NG"
  deallocate(b(1)%za)
  deallocate(b(2)%za)

  call allo6(a,b)
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/2,3/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2,3/))) write(6,*) "NG"
  deallocate(b(1)%za)
  deallocate(b(2)%za)

  call allo7(a,b)
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(1)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(2)%za/=(/2,3/))) write(6,*) "NG"
  deallocate(b(1)%za)
  deallocate(b(2)%za)

  call allo8(a,b)
  if (.not.allocated(b(1)%za)) write(6,*) "NG"
  if (.not.allocated(b(2)%za)) write(6,*) "NG"
  if (any(b(2)%za/=(/1,2/))) write(6,*) "NG"
  if (any(b(1)%za/=(/2,3/))) write(6,*) "NG"
  if (allocated(a(1)%za)) write(6,*) "NG"
  if (allocated(a(2)%za)) write(6,*) "NG"

  contains

    subroutine allo1(a,b)
      use mod
      type(z),allocatable,dimension(:)::b
      type(z)            ,dimension(2)::a

      b=a

    end subroutine

    subroutine allo2(a,b)
      use mod
      type(z),allocatable,dimension(:)::b
      type(z)            ,dimension(2)::a

      b(:)=a(:)

    end subroutine

    subroutine allo3(a,b)
      use mod
      type(z),allocatable,dimension(:)::b
      type(z)            ,dimension(2)::a

      b(1:2:1)=a(1:2:1)

    end subroutine

    subroutine allo4(a,b)
      use mod
      type(z),allocatable,dimension(:)::b
      type(z)            ,dimension(2)::a

      b(1:2:1)=a(2:1:-1)

    end subroutine

    subroutine allo5(a,b)
      use mod
      type(z),allocatable,dimension(:)::b
      type(z)            ,dimension(2)::a

      b(:)=a(2:1:-1)

    end subroutine

    subroutine allo6(a,b)
      use mod
      type(z),allocatable,dimension(:)::b
      type(z)            ,dimension(2)::a

      b(:)=a(2)

    end subroutine

    subroutine allo7(a,b)
      use mod
      type(z),allocatable,dimension(:)::b
      type(z)            ,dimension(2)::a

      do i=1,2
        b(i)=a(i)
      enddo

    end subroutine

    subroutine allo8(a,b)
      use mod
      type(z),allocatable,dimension(:)::b
      type(z)            ,dimension(2)::a

      do i=1,2
        b(i)=a(3-i)
      enddo

      deallocate(a(1)%za)
      deallocate(a(2)%za)
    end subroutine

end subroutine
