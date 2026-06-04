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
!$omp do lastprivate(obj1, obj2)
  do i = 1, 10
    obj1%xx = i+1
    obj2%xx = i+12
    obj2%yy = i+23
  enddo
!$omp end do

  if (obj1%xx /= 11) print *,'fail'
  if (obj2%xx /= 22 .or. obj2%yy /= 33) print *,'fail'
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
!$omp do lastprivate(arr1, arr2)
  do i = 1, 10
    arr1%xx = i+1
    arr2%xx = i+12
    arr2%yy = i+23
  enddo
!$omp end do

  if (any(arr1%xx /= 11)) print *,'fail'
  if (any(arr2%xx /= 22) .or. any(arr2%yy /= 33)) print *,'fail'
!$omp end parallel
end subroutine sub02

subroutine sub05(arg1, arg2)
  use mod01
  class(ty0),intent(inout) :: arg1
  class(ty1),intent(inout) :: arg2
  integer :: i

  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30

!$omp parallel
!$omp do lastprivate(arg1, arg2)
  do i = 1, 10
    arg1%xx = i+1
    arg2%xx = i+12
    arg2%yy = i+23
  enddo
!$omp end do

  if (arg1%xx /= 11) print *,'fail'
  if (arg2%xx /= 22 .or. arg2%yy /= 33) print *,'fail'
!$omp end parallel
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
!$omp do lastprivate(arg1, arg2)
  do i = 1, 10
    arg1%xx = i+1
    arg2%xx = i+12
    arg2%yy = i+23
  enddo
!$omp end do

  if (arg1%xx /= 11) print *,'fail'
  if (arg2%xx /= 22 .or. arg2%yy /= 33) print *,'fail'
!$omp end parallel
end subroutine sub06

subroutine sub08(arg1, arg2)
  use mod01
  class(ty0),intent(inout) :: arg1(2,2)
  class(ty1),intent(inout) :: arg2(:,:)
  integer :: i

  arg1%xx = 10
  arg2%xx = 20
  arg2%yy = 30

!$omp parallel
!$omp do lastprivate(arg1, arg2)
  do i = 1, 10
    arg1%xx = i+1
    arg2%xx = i+12
    arg2%yy = i+23
  enddo
!$omp end do

  if (any(arg1%xx /= 11)) print *,'fail'
  if (any(arg2%xx /= 22) .or. any(arg2%yy /= 33)) print *,'fail'
!$omp end parallel
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
!$omp do lastprivate(arg1, arg2)
  do i = 1, 10
    arg1%xx = i+1
    arg2%xx = i+12
    arg2%yy = i+23
  enddo
!$omp end do

  if (any(arg1%xx /= 11)) print *,'fail'
  if (any(arg2%xx /= 22) .or. any(arg2%yy /= 33)) print *,'fail'
!$omp end parallel
end subroutine sub09

program do_lp
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
  end interface

  class(ty0),allocatable :: obj1
  class(ty1),allocatable :: obj2
  class(ty0),allocatable :: obj5(:,:)
  class(ty1),allocatable :: obj6(:,:)
  allocate(ty0::obj1)
  allocate(ty1::obj2)
  allocate(ty0::obj5(2,2))
  allocate(ty1::obj6(2,2))

  call sub01()
  call sub02()

  call sub05(obj1, obj2)
  if (obj1%xx /= 11) print *,'fail'
  if (obj2%xx /= 22 .or. obj2%yy /= 33) print *,'fail'

  call sub06(obj1, obj2)
  if (obj1%xx /= 11) print *,'fail'
  if (obj2%xx /= 22 .or. obj2%yy /= 33) print *,'fail'

  call sub08(obj5, obj6)
  if (any(obj5%xx /= 11)) print *,'fail'
  if (any(obj6%xx /= 22) .or. any(obj6%yy /= 33)) print *,'fail'

  call sub09(obj5, obj6)
  if (any(obj5%xx /= 11)) print *,'fail'
  if (any(obj6%xx /= 22) .or. any(obj6%yy /= 33)) print *,'fail'

  print *,'do lastprivate test: pass'
end program do_lp
