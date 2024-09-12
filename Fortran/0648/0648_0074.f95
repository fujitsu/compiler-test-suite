  program main

    common /c1/m1
    volatile :: /c1/

    common /c2/m2
    save :: /c2/
    volatile :: /c2/

    save :: /c3/
    common /c3/m3
    volatile :: /c3/

    common /c4/m4
    volatile :: /c4/
    save :: /c4/

    save :: /c5/
    volatile :: /c5/
    common /c5/m5

    volatile :: /c6/
    common /c6/m6

    volatile :: /c7/
    common /c7/m7
    save :: /c7/

    volatile :: /c8/
    save :: /c8/
    common /c8/m8

    integer :: m1,m2,m3,m4,m5,m6,m7,m8

    call sub()
    if (any((/m1,m2,m3,m4,m5,m6,m7,m8/).ne.(/1,2,3,4,5,6,7,8/))) then
      print *," +++ NG +++ "
    end if

    print *," *** pass *** "

  end program main

  subroutine sub()

    common /c1/m1
    volatile :: /c1/

    common /c2/m2
    save :: /c2/
    volatile :: /c2/

    save :: /c3/
    common /c3/m3
    volatile :: /c3/

    common /c4/m4
    volatile :: /c4/
    save :: /c4/

    save :: /c5/
    volatile :: /c5/
    common /c5/m5

    volatile :: /c6/
    common /c6/m6

    volatile :: /c7/
    common /c7/m7
    save :: /c7/

    volatile :: /c8/
    save :: /c8/
    common /c8/m8

    integer :: m1,m2,m3,m4,m5,m6,m7,m8

    m1 = 1
    m2 = 2
    m3 = 3
    m4 = 4
    m5 = 5
    m6 = 6
    m7 = 7
    m8 = 8

  end subroutine sub
