  module mod

    integer,target,volatile :: m1(1:1)

    integer,volatile,target :: m2(2:2)

    target :: m3(3:3)
    volatile :: m3

    target :: m4(4:4)
    integer,volatile :: m4

    integer,target :: m5(5:5)
    volatile :: m5

    integer,target :: m6(6:6)
    integer,volatile :: m6

    volatile :: m7
    target :: m7(7:7)

    integer,volatile :: m8
    target :: m8(8:8)

    volatile :: m9
    integer,target :: m9(9:9)

    integer,volatile :: ma
    integer,target :: ma(0:0)

  end module

  program main

    use mod

    integer,pointer,dimension(:) :: p1,p2,p3,p4,p5,p6,p7,p8,p9,pa

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

    p1 => m1
    p2 => m2
    p3 => m3
    p4 => m4
    p5 => m5
    p6 => m6
    p7 => m7
    p8 => m8
    p9 => m9
    pa => ma

    if (any ((/p1,p2,p3,p4,p5,p6,p7,p8,p9,pa/).ne.(/1,2,3,4,5,6,7,8,9,0/))) &
   &       then
      print *," +++ NG +++ "
    end if

    print *," *** pass *** "

  end program main
