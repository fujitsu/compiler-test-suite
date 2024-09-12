  program main
    implicit none
    integer :: error = 0

    call check_real_4(error)
    call check_real_8(error)
    call check_real_16(error)
    call check_complex_4(error)
    call check_complex_8(error)
    call check_complex_16(error)

    if (error == 0) then
      print *," *** pass *** "
    endif
  end program main

  subroutine check_real_4(error)
    implicit none
    integer error
    real(kind=4) :: a1,a2,a3,a4
    real(kind=4) :: b1,b2,b3,b4
    real(kind=4) :: c1,c2,c3,c4
    logical(kind=2) :: l1,l2,l3,l4,l5,l6
    parameter (a1=0.0,a2=-0.0,a3=z'00000000',a4=z'80000000')
    parameter (l1=a1.eq.a2 , l2=a3.eq.a4)
    logical umin_mode

    l3=a1.eq.a2 ; l4=a3.eq.a4
    b1 = a1 ; b2 = a2 ; b3 = a3 ; b4 = a4 
    l5=b1.eq.b2 ; l6=b3.eq.b4
    b4 = z'80000000'
    c1 = sign(1.0,-0.0)
    c2 = sign(1.0,a2)
    c3 = sign(1.0,a4)
    c4 = sign(1.0,b4)

    if (.not.(all((/l1,l2,l3,l4,l5,l6/)))) then
      print *, " +++ error : item 1 +++ "
      error = error + 1
    endif

    if (umin_mode(0.0)) then
      if (all((/c1.lt.0.0,c2.lt.0.0,c3.lt.0.0,c4.lt.0.0/))) then
      else
        print *, " +++ error : item 2 +++ "
        error = error + 1
      endif
    else
    if (any((/c1.lt.0.0,c2.lt.0.0,c3.lt.0.0,c4.lt.0.0/))) then
      print *, " +++ error : item 2 +++ "
      error = error + 1
    endif
    endif
  end subroutine

  subroutine check_real_8(error)
    implicit none
    integer error
    real(kind=8) :: a1,a2,a3,a4
    real(kind=8) :: b1,b2,b3,b4
    real(kind=8) :: c1,c2,c3,c4
    logical(kind=8) :: l1,l2,l3,l4,l5,l6
    logical umin_mode
    parameter (a1=0.0d0,a2=-0.0d0,a3=z'0000000000000000', &
             & a4=z'8000000000000000')
    parameter (l1=a1.eq.a2 , l2=a3.eq.a4)

    l3=a1.eq.a2 ; l4=a3.eq.a4
    b1 = a1 ; b2 = a2 ; b3 = a3 ; b4 = a4 
    l5=b1.eq.b2 ; l6=b3.eq.b4
    b4 = z'8000000000000000'
    c1 = sign(1.0d0,-0.0d0)
    c2 = sign(1.0d0,a2)
    c3 = sign(1.0d0,a4)
    c4 = sign(1.0d0,b4)

    if (.not.(all((/l1,l2,l3,l4,l5,l6/)))) then
      print *, " +++ error : item 3 +++ "
      error = error + 1
    endif

    if (umin_mode(0.0)) then
    if (all((/c1.lt.0.0,c2.lt.0.0,c3.lt.0.0,c4.lt.0.0/))) then
    else
      print *, " +++ error : item 4 +++ "
      error = error + 1
    endif
    else
    if (any((/c1.lt.0.0,c2.lt.0.0,c3.lt.0.0,c4.lt.0.0/))) then
      print *, " +++ error : item 4 +++ "
      error = error + 1
      endif
    endif
  end subroutine

  subroutine check_real_16(error)
    implicit none
    integer error
    real(kind=16) :: a1,a2,a3,a4
    real(kind=16) :: b1,b2,b3,b4
    real(kind=16) :: c1,c2,c3,c4
    logical(kind=1) :: l1,l2,l3,l4,l5,l6
    parameter (a1=0.0e0_16,a2=-0.0e0_16, &
             & a3=z'00000000000000000000000000000000', &
             & a4=z'80000000000000000000000000000000')
    parameter (l1=a1.eq.a2 , l2=a3.eq.a4)
    logical umin_mode

    l3=a1.eq.a2 ; l4=a3.eq.a4
    b1 = a1 ; b2 = a2 ; b3 = a3 ; b4 = a4 
    l5=b1.eq.b2 ; l6=b3.eq.b4
    b4 = z'80000000000000000000000000000000'
    c1 = sign(1.0e0_16,-0.0e0_16)
    c2 = sign(1.0e0_16,a2)
    c3 = sign(1.0e0_16,a4)
    c4 = sign(1.0e0_16,b4)

    if (.not.(all((/l1,l2,l3,l4,l5,l6/)))) then
      print *, " +++ error : item 5 +++ "
      error = error + 1
    endif

    if (umin_mode(0.0)) then
    if (all((/c1.lt.0.0,c2.lt.0.0,c3.lt.0.0,c4.lt.0.0/))) then
    else
      print *, " +++ error : item 6 +++ "
      error = error + 1
    endif
    else
    if (any((/c1.lt.0.0,c2.lt.0.0,c3.lt.0.0,c4.lt.0.0/))) then
      print *, " +++ error : item 6 +++ "
      error = error + 1
    endif
    endif
  end subroutine

  subroutine check_complex_4(error)
    implicit none
    integer error
    complex(kind=4) :: a1,a2,a3,a4,a5,a6,a7,a8
    complex(kind=4) :: b1,b2,b3,b4,b5,b6,b7,b8
    logical(kind=2) :: l1,l2,l3,l4,l5,l6,l7,l8,l9,la,lb,lc
    parameter (a1=(0.0,0.0),a2=(-0.0,-0.0),a3=(0.0,-0.0),a4=(-0.0,0.0), &
             & a5=z'0000000000000000',a6=z'8000000080000000', &
             & a7=z'0000000080000000',a8=z'8000000000000000')
    parameter (l1=a1.eq.a2 , l2=a3.eq.a4, l3=a5.eq.a6, l4=a7.eq.a8)

    l5=a1.eq.a2 ; l6=a3.eq.a4 ; l7=a5.eq.a6 ; l8=a7.eq.a8
    b1 = a1 ; b2 = a2 ; b3 = a3 ; b4 = a4 
    b5 = a5 ; b6 = a6 ; b7 = a7 ; b8 = a8
    l9=b1.eq.b2 ; la=b3.eq.b4 ; lb=b5.eq.b6 ; lc=b7.eq.b8

    if (.not.(all((/l1,l2,l3,l4,l5,l6,l7,l8,l9,la,lb,lc/)))) then
      print *, " +++ error : item 7 +++ "
      error = error + 1
    endif
  end subroutine

  subroutine check_complex_8(error)
    implicit none
    integer error
    complex(kind=8) :: a1,a2,a3,a4,a5,a6,a7,a8
    complex(kind=8) :: b1,b2,b3,b4,b5,b6,b7,b8
    logical(kind=8) :: l1,l2,l3,l4,l5,l6,l7,l8,l9,la,lb,lc
    parameter (a1=(0.0d0,0.0d0),a2=(-0.0d0,-0.0d0), &
             & a3=(0.0d0,-0.0d0),a4=(-0.0d0,0.0d0), &
             & a5=z'00000000000000000000000000000000', &
             & a6=z'80000000000000008000000000000000', &
             & a7=z'00000000000000008000000000000000', &
             & a8=z'80000000000000000000000000000000')
    parameter (l1=a1.eq.a2 , l2=a3.eq.a4, l3=a5.eq.a6, l4=a7.eq.a8)

    l5=a1.eq.a2 ; l6=a3.eq.a4 ; l7=a5.eq.a6 ; l8=a7.eq.a8
    b1 = a1 ; b2 = a2 ; b3 = a3 ; b4 = a4 
    b5 = a5 ; b6 = a6 ; b7 = a7 ; b8 = a8
    l9=b1.eq.b2 ; la=b3.eq.b4 ; lb=b5.eq.b6 ; lc=b7.eq.b8

    if (.not.(all((/l1,l2,l3,l4,l5,l6,l7,l8,l9,la,lb,lc/)))) then
      print *, " +++ error : item 8 +++ "
      error = error + 1
    endif
  end subroutine

  subroutine check_complex_16(error)
    implicit none
    integer error
    complex(kind=16) :: a1,a2,a3,a4,a5,a6,a7,a8
    complex(kind=16) :: b1,b2,b3,b4,b5,b6,b7,b8
    logical(kind=1) :: l1,l2,l3,l4,l5,l6,l7,l8,l9,la,lb,lc
    parameter (a1=(0.0e0_16,0.0e0_16),a2=(-0.0e0_16,-0.0e0_16), &
             & a3=(0.0e0_16,-0.0e0_16),a4=(-0.0e0_16,0.0e0_16), &
    & a5=z'0000000000000000000000000000000000000000000000000000000000000000', &
    & a6=z'8000000000000000000000000000000080000000000000000000000000000000', &
    & a7=z'0000000000000000000000000000000080000000000000000000000000000000', &
    & a8=z'8000000000000000000000000000000000000000000000000000000000000000')
    parameter (l1=a1.eq.a2 , l2=a3.eq.a4, l3=a5.eq.a6, l4=a7.eq.a8)

    l5=a1.eq.a2 ; l6=a3.eq.a4 ; l7=a5.eq.a6 ; l8=a7.eq.a8
    b1 = a1 ; b2 = a2 ; b3 = a3 ; b4 = a4 
    b5 = a5 ; b6 = a6 ; b7 = a7 ; b8 = a8
    l9=b1.eq.b2 ; la=b3.eq.b4 ; lb=b5.eq.b6 ; lc=b7.eq.b8

    if (.not.(all((/l1,l2,l3,l4,l5,l6,l7,l8,l9,la,lb,lc/)))) then
      print *, " +++ error : item 9 +++ "
      error = error + 1
    endif
  end subroutine

logical function umin_mode(r)
if (sign(2.0,-r) < 1.0) then
  umin_mode=.true.
else 
  umin_mode=.false.
endif
end
