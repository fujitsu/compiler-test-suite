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
  class(ty0),allocatable :: obj1
  class(ty1),allocatable :: obj2
  allocate(ty0::obj1)
  allocate(ty1::obj2)

  obj1%xx = 10
  obj2%xx = 20
  obj2%yy = 30

!$omp task private(obj1, obj2)
  obj1%xx = 11
  obj2%xx = 22
  obj2%yy = 33
  if (obj1%xx /= 11) print *,'fail'
  if (obj2%xx /= 22 .or. obj2%yy /= 33) print *,'fail'
!$omp end task

!$omp task default(private)
  obj1%xx = 11
  obj2%xx = 22
  obj2%yy = 33
  if (obj1%xx /= 11) print *,'fail'
  if (obj2%xx /= 22 .or. obj2%yy /= 33) print *,'fail'
!$omp end task
!$omp taskwait

!$ if (obj1%xx /= 10) print *,'fail'
!$ if (obj2%xx /= 20 .or. obj2%yy /= 30) print *,'fail'
end subroutine sub01

subroutine sub02()
  use mod01
  class(ty0),allocatable :: arr1(:)
  class(ty1),allocatable :: arr2(:,:)
  allocate(ty0::arr1(2))
  allocate(ty1::arr2(2,2))

  arr1%xx = 1
  arr2%xx = 2
  arr2%yy = 3

!$omp task private(arr1, arr2)
  arr1%xx = 10
  arr2%xx = 20
  arr2%yy = 30
  if (any(arr1%xx /= 10)) print *,'fail'
  if (any(arr2%xx /= 20) .or. any(arr2%yy /= 30)) print *,'fail'
!$omp end task

!$omp task default(private)
  arr1%xx = 10
  arr2%xx = 20
  arr2%yy = 30
  if (any(arr1%xx /= 10)) print *,'fail'
  if (any(arr2%xx /= 20) .or. any(arr2%yy /= 30)) print *,'fail'
!$omp end task
!$omp taskwait

!$ if (any(arr1%xx /= 1)) print *,'fail'
!$ if (any(arr2%xx /= 2) .or. any(arr2%yy /= 3)) print *,'fail'
end subroutine sub02

subroutine sub03()
  use mod01
  class(ty0),pointer :: ptr1
  class(ty1),pointer :: ptr2
  type(ty0),target :: obj1
  type(ty1),target :: obj2
  type(ty0),target :: obj3
  type(ty1),target :: obj4
  ptr1 => obj1
  ptr2 => obj2
  ptr1%xx = 1
  ptr2%xx = 2
  ptr2%yy = 3

!$omp task private(ptr1, ptr2)
  ptr1 => obj3
  ptr2 => obj4
  ptr1%xx = 10
  ptr2%xx = 20
  ptr2%yy = 30
  if (ptr1%xx /= 10) print *,'fail'
  if (ptr2%xx /= 20 .or. ptr2%yy /= 30) print *,'fail'
!$omp end task

!$omp task default(private)
  ptr1 => obj3
  ptr2 => obj4
  ptr1%xx = 10
  ptr2%xx = 20
  ptr2%yy = 30
  if (ptr1%xx /= 10) print *,'fail'
  if (ptr2%xx /= 20 .or. ptr2%yy /= 30) print *,'fail'
!$omp end task
!$omp taskwait

!$ if (ptr1%xx /= 1) print *,'fail'
!$ if (ptr2%xx /= 2 .or. ptr2%yy /= 3) print *,'fail'
end subroutine sub03

subroutine sub04()
  use mod01
  class(ty0),pointer :: ptr1(:)
  class(ty1),pointer :: ptr2(:,:)
  type(ty0),target :: arr1(2)
  type(ty1),target :: arr2(2,2)
  type(ty0),target :: arr3(2)
  type(ty1),target :: arr4(2,2)
  ptr1 => arr1
  ptr2 => arr2
  ptr1%xx = 1
  ptr2%xx = 2
  ptr2%yy = 3

!$omp task private(ptr1, ptr2)
  ptr1 => arr3
  ptr2 => arr4
  ptr1%xx = 10
  ptr2%xx = 30
  ptr2%yy = 40
  if (any(ptr1%xx /= 10)) print *,'fail'
  if (any(ptr2%xx /= 30) .or. any(ptr2%yy /= 40)) print *,'fail'
!$omp end task

!$omp task default(private)
  ptr1 => arr3
  ptr2 => arr4
  ptr1%xx = 10
  ptr2%xx = 30
  ptr2%yy = 40
  if (any(ptr1%xx /= 10)) print *,'fail'
  if (any(ptr2%xx /= 30) .or. any(ptr2%yy /= 40)) print *,'fail'
!$omp end task
!$omp taskwait

!$ if (any(ptr1%xx /= 1)) print *,'fail'
!$ if (any(ptr2%xx /= 2) .or. any(ptr2%yy /= 3)) print *,'fail'
end subroutine sub04

subroutine sub05(arg1, arg2)
  use mod01
  class(ty0),intent(inout) :: arg1
  class(ty1),intent(inout) :: arg2

  arg1%xx = 1
  arg2%xx = 2
  arg2%yy = 3

!$omp task private(arg1, arg2)
  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30
  if (arg1%xx /= 10) print *,'fail'
  if (arg2%xx /= 20 .or. arg2%yy /= 30) print *,'fail'
!$omp end task

!$omp task default(private)
  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30
  if (arg1%xx /= 10) print *,'fail'
  if (arg2%xx /= 20 .or. arg2%yy /= 30) print *,'fail'
!$omp end task
!$omp taskwait

!$ if (arg1%xx /= 1) print *,'fail'
!$ if (arg2%xx /= 2 .or. arg2%yy /= 3) print *,'fail'
end subroutine sub05

subroutine sub06(arg1, arg2)
  use mod01
  class(ty0),allocatable,intent(inout) :: arg1
  class(ty1),allocatable,intent(inout) :: arg2

  arg1%xx = 11
  arg2%xx = 22
  arg2%yy = 33

!$omp task private(arg1, arg2)
  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30
  if (arg1%xx /= 10) print *,'fail'
  if (arg2%xx /= 20 .or. arg2%yy /= 30) print *,'fail'
!$omp end task

!$omp task default(private)
  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30
  if (arg1%xx /= 10) print *,'fail'
  if (arg2%xx /= 20 .or. arg2%yy /= 30) print *,'fail'
!$omp end task
!$omp taskwait

!$ if (arg1%xx /= 11) print *,'fail'
!$ if (arg2%xx /= 22 .or. arg2%yy /= 33) print *,'fail'
end subroutine sub06

subroutine sub07(arg1, arg2)
  use mod01
  class(ty0),pointer,intent(inout) :: arg1
  class(ty1),pointer,intent(inout) :: arg2
  type(ty0),target,save :: obj1
  type(ty1),target,save :: obj2

  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30

!$omp task private(arg1, arg2)
  arg1 => obj1
  arg2 => obj2
  arg1%xx = 11
  arg2%xx = 33
  arg2%yy = 44
  if (arg1%xx /= 11) print *,'fail'
  if (arg2%xx /= 33 .or. arg2%yy /= 44) print *,'fail'
!$omp end task

!$omp task default(private)
  arg1 => obj1
  arg2 => obj2
  arg1%xx = 11
  arg2%xx = 33
  arg2%yy = 44
  if (arg1%xx /= 11) print *,'fail'
  if (arg2%xx /= 33 .or. arg2%yy /= 44) print *,'fail'
!$omp end task
!$omp taskwait

!$ if (arg1%xx /= 10) print *,'fail'
!$ if (arg2%xx /= 20 .or. arg2%yy /= 30) print *,'fail'
end subroutine sub07

subroutine sub08(arg1, arg2)
  use mod01
  class(ty0),intent(inout) :: arg1(2,2)
  class(ty1),intent(inout) :: arg2(:,:)

  arg1%xx = 1
  arg2%xx = 2
  arg2%yy = 3

!$omp task private(arg1, arg2)
  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30
  if (any(arg1%xx /= 10)) print *,'fail'
  if (any(arg2%xx /= 20) .or. any(arg2%yy /= 30)) print *,'fail'
!$omp end task

!$omp task default(private)
  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30
  if (any(arg1%xx /= 10)) print *,'fail'
  if (any(arg2%xx /= 20) .or. any(arg2%yy /= 30)) print *,'fail'
!$omp end task
!$omp taskwait

!$ if (any(arg1%xx /= 1)) print *,'fail'
!$ if (any(arg2%xx /= 2) .or. any(arg2%yy /= 3)) print *,'fail'
end subroutine sub08

subroutine sub09(arg1, arg2)
  use mod01
  class(ty0),allocatable,intent(inout) :: arg1(:,:)
  class(ty1),allocatable,intent(inout) :: arg2(:,:)

  arg1%xx = 1
  arg2%xx = 2
  arg2%yy = 3

!$omp task private(arg1, arg2)
  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30
  if (any(arg1%xx /= 10)) print *,'fail'
  if (any(arg2%xx /= 20) .or. any(arg2%yy /= 30)) print *,'fail'
!$omp end task

!$omp task default(private)
  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30
  if (any(arg1%xx /= 10)) print *,'fail'
  if (any(arg2%xx /= 20) .or. any(arg2%yy /= 30)) print *,'fail'
!$omp end task
!$omp taskwait

!$ if (any(arg1%xx /= 1)) print *,'fail'
!$ if (any(arg2%xx /= 2) .or. any(arg2%yy /= 3)) print *,'fail'
end subroutine sub09

subroutine sub10(arg1, arg2)
  use mod01
  class(ty0),pointer,intent(inout) :: arg1(:,:)
  class(ty1),pointer,intent(inout) :: arg2(:,:)
  type(ty0),target,save :: obj1(2,2)
  type(ty1),target,save :: obj2(2,2)

  arg1%xx = 1
  arg2%xx = 2
  arg2%yy = 3

!$omp task private(arg1, arg2)
  arg1 => obj1
  arg2 => obj2
  arg1%xx = 10
  arg2%xx = 30
  arg2%yy = 40
  if (any(arg1%xx /= 10)) print *,'fail'
  if (any(arg2%xx /= 30) .or. any(arg2%yy /= 40)) print *,'fail'
!$omp end task

!$omp task default(private)
  arg1 => obj1
  arg2 => obj2
  arg1%xx = 10
  arg2%xx = 30
  arg2%yy = 40
  if (any(arg1%xx /= 10)) print *,'fail'
  if (any(arg2%xx /= 30) .or. any(arg2%yy /= 40)) print *,'fail'
!$omp end task
!$omp taskwait

!$ if (any(arg1%xx /= 1)) print *,'fail'
!$ if (any(arg2%xx /= 2) .or. any(arg2%yy /= 3)) print *,'fail'
end subroutine sub10

program class_sh
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

  print *,'task private test: pass'
end program class_sh
