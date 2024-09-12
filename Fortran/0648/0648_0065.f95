  module mod

    integer,pointer,volatile :: m1(:)

    integer,volatile,pointer :: m2(:)

    pointer :: m3(:)
    volatile :: m3

    pointer :: m4(:)
    integer,volatile :: m4

    integer,pointer :: m5(:)
    volatile :: m5

    integer :: m6(:)
    volatile :: m6
    pointer :: m6

    volatile :: m7
    pointer :: m7(:)

    integer,volatile :: m8
    pointer :: m8(:)

    volatile :: m9
    integer,pointer :: m9(:)

    volatile :: ma
    integer :: ma(:)
    pointer :: ma

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
