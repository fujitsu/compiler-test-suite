  program main

    print *," *** pass *** "

  end program main

  subroutine sub1()

  entry ent1(a1,a2,a3,a4,a5,a6,a7,a8)

    integer,allocatable,optional :: a1(:)
    integer,optional,allocatable :: a2(:)

    integer :: a3
    allocatable :: a3(:)
    optional :: a3

    integer :: a4
    optional :: a4
    allocatable :: a4(:)

    allocatable :: a5(:)
    integer :: a5
    optional :: a5

    allocatable :: a6(:)
    optional :: a6
    integer :: a6

    optional :: a7
    integer :: a7
    allocatable :: a7(:)

    optional :: a8
    allocatable :: a8(:)
    integer :: a8

  end subroutine sub1

  subroutine sub2()

  entry ent2(a1,a2,a3,a4,a5,a6,a7,a8)

    integer,allocatable,intent(in) :: a1(:)
    integer,intent(in),allocatable :: a2(:)

    integer :: a3
    allocatable :: a3(:)
    intent(in) :: a3

    integer :: a4
    intent(in) :: a4
    allocatable :: a4(:)

    allocatable :: a5(:)
    integer :: a5
    intent(in) :: a5

    allocatable :: a6(:)
    intent(in) :: a6
    integer :: a6

    intent(in) :: a7
    integer :: a7
    allocatable :: a7(:)

    intent(in) :: a8
    allocatable :: a8(:)
    integer :: a8

  end subroutine sub2

  subroutine sub3()

  entry ent3(a1,a2,a3,a4,a5,a6,a7,a8)

    integer,allocatable,intent(out) :: a1(:)
    integer,intent(out),allocatable :: a2(:)

    integer :: a3
    allocatable :: a3(:)
    intent(out) :: a3

    integer :: a4
    intent(out) :: a4
    allocatable :: a4(:)

    allocatable :: a5(:)
    integer :: a5
    intent(out) :: a5

    allocatable :: a6(:)
    intent(out) :: a6
    integer :: a6

    intent(out) :: a7
    integer :: a7
    allocatable :: a7(:)

    intent(out) :: a8
    allocatable :: a8(:)
    integer :: a8

  end subroutine sub3

  subroutine sub4()

  entry ent4(a1,a2,a3,a4,a5,a6,a7,a8)

    integer,allocatable,intent(inout) :: a1(:)
    integer,intent(inout),allocatable :: a2(:)

    integer :: a3
    allocatable :: a3(:)
    intent(inout) :: a3

    integer :: a4
    intent(inout) :: a4
    allocatable :: a4(:)

    allocatable :: a5(:)
    integer :: a5
    intent(inout) :: a5

    allocatable :: a6(:)
    intent(inout) :: a6
    integer :: a6

    intent(inout) :: a7
    integer :: a7
    allocatable :: a7(:)

    intent(inout) :: a8
    allocatable :: a8(:)
    integer :: a8

  end subroutine sub4
