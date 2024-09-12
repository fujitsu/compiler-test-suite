  module mod

    integer,allocatable,volatile :: m1(:)

    integer,volatile,allocatable :: m2(:)

    allocatable :: m3(:)
    volatile :: m3

    allocatable :: m4(:)
    integer,volatile :: m4

    integer,allocatable :: m5(:)
    volatile :: m5

    integer,allocatable :: m6(:)
    integer,volatile :: m6

    volatile :: m7
    allocatable :: m7(:)

    integer,volatile :: m8
    allocatable :: m8(:)

    volatile :: m9
    integer,allocatable :: m9(:)

    integer,volatile :: ma
    integer,allocatable :: ma(:)

  end module

  program main

    use mod

    allocate (m1(1:1))
    allocate (m2(2:2))
    allocate (m3(3:3))
    allocate (m4(4:4))
    allocate (m5(5:5))
    allocate (m6(6:6))
    allocate (m7(7:7))
    allocate (m8(8:8))
    allocate (m9(9:9))
    allocate (ma(0:0))

    m1 = 1
    m2 = 2
    m3 = 3
    m4 = 4
    m5 = 5
    m6 = 6
    m7 = 7
    m8 = 8
    m9 = 9
    ma = 0

    if (any ((/m1,m2,m3,m4,m5,m6,m7,m8,m9,ma/).ne.(/1,2,3,4,5,6,7,8,9,0/))) &
   &       then
      print *," +++ NG +++ "
    end if

    print *," *** pass *** "

    deallocate (m1,m2,m3,m4,m5,m6,m7,m8,m9,ma)

  end program main
