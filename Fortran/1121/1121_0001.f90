module mod01
  type ty0
    integer xx
  end type
  type,extends(ty0) :: ty1
    integer yy
  end type
end module mod01

subroutine sub01()
  use mod01
  integer :: i
  class(ty0),allocatable :: obj1
  class(ty1),allocatable :: obj2
  allocate(ty0::obj1)
  allocate(ty1::obj2)

  obj1%xx = 10
  obj2%xx = 20
  obj2%yy = 30

!$omp parallel
!$omp do private(obj1, obj2)
  do i = 1, 2
    obj1%xx = 11
    obj2%xx = 22
    obj2%yy = 33
    if (obj1%xx /= 11) print *,'fail'
    if (obj2%xx /= 22 .or. obj2%yy /= 33) print *,'fail'
  enddo
!$omp end do

!$ if (obj1%xx /= 10) print *,'fail'
!$ if (obj2%xx /= 20 .or. obj2%yy /= 30) print *,'fail'
!$omp end parallel
end subroutine sub01

subroutine sub02()
  use mod01
  integer :: i
  class(ty0),allocatable :: arr1(:)
  class(ty1),allocatable :: arr2(:,:)
  allocate(ty0::arr1(2))
  allocate(ty1::arr2(2,2))

  arr1%xx = 10
  arr2%xx = 20
  arr2%yy = 30

!$omp parallel
!$omp do private(arr1, arr2)
  do i = 1, 2
    arr1%xx = 11
    arr2%xx = 22
    arr2%yy = 33
    if (any(arr1%xx /= 11)) print *,'fail'
    if (any(arr2%xx /= 22) .or. any(arr2%yy /= 33)) print *,'fail'
  enddo
!$omp end do

!$ if (any(arr1%xx /= 10)) print *,'fail'
!$ if (any(arr2%xx /= 20) .or. any(arr2%yy /= 30)) print *,'fail'
!$omp end parallel
end subroutine sub02

subroutine sub03()
  use mod01
  integer :: i
  class(ty0),pointer :: ptr1
  class(ty1),pointer :: ptr2
  type(ty0),target :: obj1
  type(ty1),target :: obj2
  type(ty0),target :: obj3
  type(ty1),target :: obj4
  ptr1 => obj1
  ptr2 => obj2
  ptr1%xx = 10
  ptr2%xx = 20
  ptr2%yy = 30

!$omp parallel
!$omp do private(ptr1, ptr2)
  do i = 1, 2
    ptr1 => obj3
    ptr2 => obj4
    ptr1%xx = 11
    ptr2%xx = 22
    ptr2%yy = 33
    if (ptr1%xx /= 11) print *,'fail'
    if (ptr2%xx /= 22 .or. ptr2%yy /= 33) print *,'fail'
  enddo
!$omp end do
!$omp end parallel

!$ if (ptr1%xx /= 10) print *,'fail'
!$ if (ptr2%xx /= 20 .or. ptr2%yy /= 30) print *,'fail'
end subroutine sub03

subroutine sub04()
  use mod01
  integer :: i
  class(ty0),pointer :: ptr1(:)
  class(ty1),pointer :: ptr2(:,:)
  type(ty0),target :: arr1(2)
  type(ty1),target :: arr2(2,2)
  type(ty0),target :: arr3(2)
  type(ty1),target :: arr4(2,2)
  ptr1 => arr1
  ptr2 => arr2
  ptr1%xx = 10
  ptr2%xx = 20
  ptr2%yy = 30

!$omp parallel
!$omp do private(ptr1, ptr2)
  do i = 1, 2
    ptr1 => arr3
    ptr2 => arr4
    ptr1%xx = 11
    ptr2%xx = 22
    ptr2%yy = 33
    if (any(ptr1%xx /= 11)) print *,'fail'
    if (any(ptr2%xx /= 22) .or. any(ptr2%yy /= 33)) print *,'fail'
  enddo
!$omp end do
!$omp end parallel

!$ if (any(ptr1%xx /= 10)) print *,'fail'
!$ if (any(ptr2%xx /= 20) .or. any(ptr2%yy /= 30)) print *,'fail'
end subroutine sub04

subroutine sub05(arg1, arg2)
  use mod01
  class(ty0),intent(inout) :: arg1
  class(ty1),intent(inout) :: arg2
  integer :: i

  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30

!$omp parallel
!$omp do private(arg1, arg2)
  do i = 1, 2
    arg1%xx = 11
    arg2%xx = 22
    arg2%yy = 33
    if (arg1%xx /= 11) print *,'fail'
    if (arg2%xx /= 22 .or. arg2%yy /= 33) print *,'fail'
  enddo
!$omp end do
!$omp end parallel

!$ if (arg1%xx /= 10) print *,'fail'
!$ if (arg2%xx /= 20 .or. arg2%yy /= 30) print *,'fail'
end subroutine sub05

subroutine sub06(arg1, arg2)
  use mod01
  class(ty0),allocatable,intent(inout) :: arg1
  class(ty1),allocatable,intent(inout) :: arg2
  integer :: i

  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30

!$omp parallel
!$omp do private(arg1, arg2)
  do i = 1, 2
    arg1%xx = 11
    arg2%xx = 22
    arg2%yy = 33
    if (arg1%xx /= 11) print *,'fail'
    if (arg2%xx /= 22 .or. arg2%yy /= 33) print *,'fail'
  enddo
!$omp end do
!$omp end parallel

!$ if (arg1%xx /= 10) print *,'fail'
!$ if (arg2%xx /= 20 .or. arg2%yy /= 30) print *,'fail'
end subroutine sub06

subroutine sub07(arg1, arg2)
  use mod01
  class(ty0),pointer,intent(inout) :: arg1
  class(ty1),pointer,intent(inout) :: arg2
  integer :: i
  type(ty0),target :: obj3
  type(ty1),target :: obj4

  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30

!$omp parallel
!$omp do private(arg1, arg2)
  do i = 1, 2
    arg1 => obj3
    arg2 => obj4
    arg1%xx = 11
    arg2%xx = 22
    arg2%yy = 33
    if (arg1%xx /= 11) print *,'fail'
    if (arg2%xx /= 22 .or. arg2%yy /= 33) print *,'fail'
  enddo
!$omp end do
!$omp end parallel

!$ if (arg1%xx /= 10) print *,'fail'
!$ if (arg2%xx /= 20 .or. arg2%yy /= 30) print *,'fail'
end subroutine sub07

subroutine sub08(arg1, arg2)
  use mod01
  class(ty0),intent(inout) :: arg1(2,2)
  class(ty1),intent(inout) :: arg2(:,:)
  integer :: i

  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30

!$omp parallel
!$omp do private(arg1, arg2)
  do i = 1, 2
    arg1%xx = 11
    arg2%xx = 22
    arg2%yy = 33
    if (any(arg1%xx /= 11)) print *,'fail'
    if (any(arg2%xx /= 22) .or. any(arg2%yy /= 33)) print *,'fail'
  enddo
!$omp end do
!$omp end parallel

!$ if (any(arg1%xx /= 10)) print *,'fail'
!$ if (any(arg2%xx /= 20) .or. any(arg2%yy /= 30)) print *,'fail'
end subroutine sub08

subroutine sub09(arg1, arg2)
  use mod01
  class(ty0),allocatable,intent(inout) :: arg1(:,:)
  class(ty1),allocatable,intent(inout) :: arg2(:,:)
  integer :: i

  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30

!$omp parallel
!$omp do private(arg1, arg2)
  do i = 1, 2
    arg1%xx = 11
    arg2%xx = 22
    arg2%yy = 33
    if (any(arg1%xx /= 11)) print *,'fail'
    if (any(arg2%xx /= 22) .or. any(arg2%yy /= 33)) print *,'fail'
  enddo
!$omp end do
!$omp end parallel

!$ if (any(arg1%xx /= 10)) print *,'fail'
!$ if (any(arg2%xx /= 20) .or. any(arg2%yy /= 30)) print *,'fail'
end subroutine sub09

subroutine sub10(arg1, arg2)
  use mod01
  class(ty0),pointer,intent(inout) :: arg1(:,:)
  class(ty1),pointer,intent(inout) :: arg2(:,:)
  integer :: i
  type(ty0),target :: obj7(2,2)
  type(ty1),target :: obj8(2,2)

  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30

!$omp parallel
!$omp do private(arg1, arg2)
  do i = 1, 2
    arg1 => obj7
    arg2 => obj8
    arg1%xx = 11
    arg2%xx = 22
    arg2%yy = 33
    if (any(arg1%xx /= 11)) print *,'fail'
    if (any(arg2%xx /= 22) .or. any(arg2%yy /= 33)) print *,'fail'
  enddo
!$omp end do
!$omp end parallel

!$ if (any(arg1%xx /= 10)) print *,'fail'
!$ if (any(arg2%xx /= 20) .or. any(arg2%yy /= 30)) print *,'fail'
end subroutine sub10

program do_pri
  use mod01
  interface
    subroutine sub05(obj1, obj2)
      use mod01
      class(ty0),intent(inout) :: obj1
      class(ty1),intent(inout) :: obj2
    end subroutine sub05
    subroutine sub06(obj1, obj2)
      use mod01
      class(ty0),allocatable,intent(inout) :: obj1
      class(ty1),allocatable,intent(inout) :: obj2
    end subroutine sub06
    subroutine sub07(obj1, obj2)
      use mod01
      class(ty0),pointer,intent(inout) :: obj1
      class(ty1),pointer,intent(inout) :: obj2
    end subroutine sub07
    subroutine sub08(obj1, obj2)
      use mod01
      class(ty0),intent(inout) :: obj1(2,2)
      class(ty1),intent(inout) :: obj2(:,:)
    end subroutine sub08
    subroutine sub09(obj1, obj2)
      use mod01
      class(ty0),allocatable,intent(inout) :: obj1(:,:)
      class(ty1),allocatable,intent(inout) :: obj2(:,:)
    end subroutine sub09
    subroutine sub10(obj1, obj2)
      use mod01
      class(ty0),pointer,intent(inout) :: obj1(:,:)
      class(ty1),pointer,intent(inout) :: obj2(:,:)
    end subroutine sub10
  end interface

  class(ty0),allocatable :: obj1
  class(ty1),allocatable :: obj2
  class(ty0),pointer :: ptr1
  class(ty1),pointer :: ptr2
  type(ty0),target :: obj3
  type(ty1),target :: obj4
  class(ty0),allocatable :: obj5(:,:)
  class(ty1),allocatable :: obj6(:,:)
  class(ty0),pointer :: ptr3(:,:)
  class(ty1),pointer :: ptr4(:,:)
  type(ty0),target :: obj7(2,2)
  type(ty1),target :: obj8(2,2)
  allocate(ty0::obj1)
  allocate(ty1::obj2)
  allocate(ty0::obj5(2,2))
  allocate(ty1::obj6(2,2))
  ptr1 => obj3
  ptr2 => obj4
  ptr3 => obj7
  ptr4 => obj8

  call sub01()
  call sub02()
  call sub03()
  call sub04()
  call sub05(obj1, obj2)
  call sub06(obj1, obj2)
  call sub07(ptr1, ptr2)
  call sub08(obj5, obj6)
  call sub09(obj5, obj6)
  call sub10(ptr3, ptr4)

  print *,'do private test: pass'
end program do_pri
