module mod
  common /com1/v,w,t,s
  complex(kind=16),dimension(1:10) :: v,w,t,s
  common /com2/p,q
  complex(kind=16),dimension(1:10) :: p,q
end module

program main
  use mod

  if (test1()) then
    if (test2()) then
      print *,"ALL-OK"
    else
      print *,"TEST2-NG"
    endif
  else
    print *,"TEST1-NG"
  endif

  contains
!
! [TEST1]
!
  logical(kind=1) function test1()

    real(kind=16),parameter :: ans1=78.299999999999999999999999999999998_16
    real(kind=16),parameter :: ans2=-10.699999999999999999999999999999999_16
    real(kind=16),parameter :: ans3=9.5860000000000000000000000000000000_16
    real(kind=16),parameter :: ans4=6.3758920520313026663750534390884311_16
    real(kind=16),parameter :: error= 0.000000000000000000000000000000013_16
    real(kind=16) res
    logical(kind=1) ok

    call init
    p(1:10) = v(1:10) + w(1:10)
    q(1:10) = p(1:10) + s(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10:1) = v(1:10:1) + w(1:10:1)
    q(1:10:1) = p(1:10:1) + s(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:) = v(:) + w(:)
    q(:) = p(:) + s(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:) = v(1:) + w(1:)
    q(1:) = p(1:) + s(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:10) = v(:10) + w(:10)
    q(:10) = p(:10) + s(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10) = v(1:10) - w(1:10)
    q(1:10) = p(1:10) - s(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10:1) = v(1:10:1) - w(1:10:1)
    q(1:10:1) = p(1:10:1) - s(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:) = v(:) - w(:)
    q(:) = p(:) - s(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:) = v(1:) - w(1:)
    q(1:) = p(1:) - s(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:10) = v(:10) - w(:10)
    q(:10) = p(:10) - s(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10) = v(1:10) * w(1:10)
    q(1:10) = p(1:10) * s(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10:1) = v(1:10:1) * w(1:10:1)
    q(1:10:1) = p(1:10:1) * s(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:) = v(:) * w(:)
    q(:) = p(:) * s(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:) = v(1:) * w(1:)
    q(1:) = p(1:) * s(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:10) = v(:10) * w(:10)
    q(:10) = p(:10) * s(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10) = v(1:10) / w(1:10)
    q(1:10) = p(1:10) / s(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10:1) = v(1:10:1) / w(1:10:1)
    q(1:10:1) = p(1:10:1) / s(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:) = v(:) / w(:)
    q(:) = p(:) / s(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:) = v(1:) / w(1:)
    q(1:) = p(1:) / s(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:10) = v(:10) / w(:10)
    q(:10) = p(:10) / s(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

 100    continue

  if (.not. ok) then
    print *,"TEST1 => NG=",res
  endif

  test1 = ok

  end function

!
! [TEST2]
!
  logical(kind=1) function test2()

    real(kind=16),parameter :: ans1=78.299999999999999999999999999999998_16
    real(kind=16),parameter :: ans2=-10.699999999999999999999999999999999_16
    real(kind=16),parameter :: ans3=9.5860000000000000000000000000000000_16
    real(kind=16),parameter :: ans4=6.3758920520313026663750534390884311_16
    real(kind=16),parameter :: error= 0.000000000000000000000000000000013_16
    real(kind=16) res
    logical(kind=1) ok

    call init2
    p(1:10) = p(1:10) + q(1:10)
    q(1:10) = p(1:10) + v(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10:1) = p(1:10:1) + q(1:10:1)
    q(1:10:1) = p(1:10:1) + v(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:) = p(:) + q(:)
    q(:) = p(:) + v(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:) = p(1:) + q(1:)
    q(1:) = p(1:) + v(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:10) = p(:10) + q(:10)
    q(:10) = p(:10) + v(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans1) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10) = p(1:10) - q(1:10)
    q(1:10) = p(1:10) - v(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10:1) = p(1:10:1) - q(1:10:1)
    q(1:10:1) = p(1:10:1) - v(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:) = p(:) - q(:)
    q(:) = p(:) - v(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:) = p(1:) - q(1:)
    q(1:) = p(1:) - v(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:10) = p(:10) - q(:10)
    q(:10) = p(:10) - v(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans2) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10) = p(1:10) * q(1:10)
    q(1:10) = p(1:10) * v(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10:1) = p(1:10:1) * q(1:10:1)
    q(1:10:1) = p(1:10:1) * v(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:) = p(:) * q(:)
    q(:) = p(:) * v(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:) = p(1:) * q(1:)
    q(1:) = p(1:) * v(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:10) = p(:10) * q(:10)
    q(:10) = p(:10) * v(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans3) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10) = p(1:10) / q(1:10)
    q(1:10) = p(1:10) / v(1:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10:1) = p(1:10:1) / q(1:10:1)
    q(1:10:1) = p(1:10:1) / v(1:10:1)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:) = p(:) / q(:)
    q(:) = p(:) / v(:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:) = p(1:) / q(1:)
    q(1:) = p(1:) / v(1:)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:10) = p(:10) / q(:10)
    q(:10) = p(:10) / v(:10)
    res = real(sum(p+q)) + aimag(sum(p+q))
    if ( abs(res - ans4) <= error ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

 200    continue

  if (.not. ok) then
    print *,"TEST2 => NG=",res
  endif

  test2 = ok

  end function

  subroutine init()

    v = (/(1.2_16,0.8_16),(1.0_16,-1.0_16),(2.0_16,1.0_16),(2.3_16,2.0_16),(1.3_16,-0.7_16),(-1.1_16,1.0_16),(1.4_16,-1.0_16),(0.4_16,2.0_16),(1.0_16,1.3_16),(1.0_16,1.0_16)/)
    w = (/(1.0_16,1.8_16),(-1.0_16,-1.0_16),(2.0_16,1.0_16),(2.2_16,2.0_16),(1.4_16,-0.7_16),(-1.1_16,-1.2_16),(1.4_16,-1.0_16),(0.4_16,2.4_16),(1.2_16,2.0_16),(1.9_16,1.8_16)/)
    t = (/(0.9_16,1.0_16),(1.0_16,-1.3_16),(1.0_16,1.2_16),(1.0_16,-1.0_16),(-2.2_16,-1.0_16),(-1.0_16,2.0_16),(1.2_16,-2.0_16),(1.8_16,-2.0_16),(3.0_16,2.0_16),(1.2_16,1.0_16)/)
    s = (/(1.0_16,1.9_16),(2.0_16,-1.4_16),(1.0_16,1.9_16),(1.4_16,1.4_16),(2.8_16,-1.9_16),(-1.2_16,2.6_16),(1.3_16,-1.4_16),(-1.8_16,-1.8_16),(1.3_16,2.0_16),(-1.4_16,1.8_16)/)

  end subroutine

  subroutine init2()

    p = (/(1.2_16,0.8_16),(1.0_16,-1.0_16),(2.0_16,1.0_16),(2.3_16,2.0_16),(1.3_16,-0.7_16),(-1.1_16,1.0_16),(1.4_16,-1.0_16),(0.4_16,2.0_16),(1.0_16,1.3_16),(1.0_16,1.0_16)/)
    q = (/(1.0_16,1.8_16),(-1.0_16,-1.0_16),(2.0_16,1.0_16),(2.2_16,2.0_16),(1.4_16,-0.7_16),(-1.1_16,-1.2_16),(1.4_16,-1.0_16),(0.4_16,2.4_16),(1.2_16,2.0_16),(1.9_16,1.8_16)/)
    v = (/(1.0_16,1.9_16),(2.0_16,-1.4_16),(1.0_16,1.9_16),(1.4_16,1.4_16),(2.8_16,-1.9_16),(-1.2_16,2.6_16),(1.3_16,-1.4_16),(-1.8_16,-1.8_16),(1.3_16,2.0_16),(-1.4_16,1.8_16)/)

  end subroutine

end program main

