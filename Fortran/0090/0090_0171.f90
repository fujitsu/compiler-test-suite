module mod
  common /com1/v,w,t,s
  integer(kind=1),dimension(1:10) :: v,w,t,s
  common /com2/p,q
  integer(kind=1),dimension(1:10) :: p,q
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

    integer(kind=1),parameter :: ans1=36_1
    integer(kind=1),parameter :: ans2=-16_1
    integer(kind=1),parameter :: ans3=21_1
    integer(kind=1),parameter :: ans4=2_1
    integer(kind=1) res
    logical(kind=1) ok

    call init
    p(1:10) = v(1:10) + w(1:10)
    q(1:10) = p(1:10) + s(1:10)
    res = sum(p+q)
    if ( res == ans1 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10:1) = v(1:10:1) + w(1:10:1)
    q(1:10:1) = p(1:10:1) + s(1:10:1)
    res = sum(p+q)
    if ( res == ans1 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:) = v(:) + w(:)
    q(:) = p(:) + s(:)
    res = sum(p+q)
    if ( res == ans1 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:) = v(1:) + w(1:)
    q(1:) = p(1:) + s(1:)
    res = sum(p+q)
    if ( res == ans1 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:10) = v(:10) + w(:10)
    q(:10) = p(:10) + s(:10)
    res = sum(p+q)
    if ( res == ans1 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10) = v(1:10) - w(1:10)
    q(1:10) = p(1:10) - s(1:10)
    res = sum(p+q)
    if ( res == ans2 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10:1) = v(1:10:1) - w(1:10:1)
    q(1:10:1) = p(1:10:1) - s(1:10:1)
    res = sum(p+q)
    if ( res == ans2 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:) = v(:) - w(:)
    q(:) = p(:) - s(:)
    res = sum(p+q)
    if ( res == ans2 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:) = v(1:) - w(1:)
    q(1:) = p(1:) - s(1:)
    res = sum(p+q)
    if ( res == ans2 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:10) = v(:10) - w(:10)
    q(:10) = p(:10) - s(:10)
    res = sum(p+q)
    if ( res == ans2 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10) = v(1:10) * w(1:10)
    q(1:10) = p(1:10) * s(1:10)
    res = sum(p+q)
    if ( res == ans3 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10:1) = v(1:10:1) * w(1:10:1)
    q(1:10:1) = p(1:10:1) * s(1:10:1)
    res = sum(p+q)
    if ( res == ans3 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:) = v(:) * w(:)
    q(:) = p(:) * s(:)
    res = sum(p+q)
    if ( res == ans3 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:) = v(1:) * w(1:)
    q(1:) = p(1:) * s(1:)
    res = sum(p+q)
    if ( res == ans3 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:10) = v(:10) * w(:10)
    q(:10) = p(:10) * s(:10)
    res = sum(p+q)
    if ( res == ans3 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10) = v(1:10) / w(1:10)
    q(1:10) = p(1:10) / s(1:10)
    res = sum(p+q)
    if ( res == ans4 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:10:1) = v(1:10:1) / w(1:10:1)
    q(1:10:1) = p(1:10:1) / s(1:10:1)
    res = sum(p+q)
    if ( res == ans4 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:) = v(:) / w(:)
    q(:) = p(:) / s(:)
    res = sum(p+q)
    if ( res == ans4 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(1:) = v(1:) / w(1:)
    q(1:) = p(1:) / s(1:)
    res = sum(p+q)
    if ( res == ans4 ) then
      ok = .true.
    else
      ok = .false.
      goto 100
    endif

    call init
    p(:10) = v(:10) / w(:10)
    q(:10) = p(:10) / s(:10)
    res = sum(p+q)
    if ( res == ans4 ) then
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

    integer(kind=1),parameter :: ans1=36_1
    integer(kind=1),parameter :: ans2=-16_1
    integer(kind=1),parameter :: ans3=21_1
    integer(kind=1),parameter :: ans4=2_1
    integer(kind=1) res
    logical(kind=1) ok

    call init2
    p(1:10) = p(1:10) + q(1:10)
    q(1:10) = p(1:10) + v(1:10)
    res = sum(p+q)
    if ( res == ans1 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10:1) = p(1:10:1) + q(1:10:1)
    q(1:10:1) = p(1:10:1) + v(1:10:1)
    res = sum(p+q)
    if ( res == ans1 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:) = p(:) + q(:)
    q(:) = p(:) + v(:)
    res = sum(p+q)
    if ( res == ans1 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:) = p(1:) + q(1:)
    q(1:) = p(1:) + v(1:)
    res = sum(p+q)
    if ( res == ans1 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:10) = p(:10) + q(:10)
    q(:10) = p(:10) + v(:10)
    res = sum(p+q)
    if ( res == ans1 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10) = p(1:10) - q(1:10)
    q(1:10) = p(1:10) - v(1:10)
    res = sum(p+q)
    if ( res == ans2 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10:1) = p(1:10:1) - q(1:10:1)
    q(1:10:1) = p(1:10:1) - v(1:10:1)
    res = sum(p+q)
    if ( res == ans2 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:) = p(:) - q(:)
    q(:) = p(:) - v(:)
    res = sum(p+q)
    if ( res == ans2 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:) = p(1:) - q(1:)
    q(1:) = p(1:) - v(1:)
    res = sum(p+q)
    if ( res == ans2 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:10) = p(:10) - q(:10)
    q(:10) = p(:10) - v(:10)
    res = sum(p+q)
    if ( res == ans2 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10) = p(1:10) * q(1:10)
    q(1:10) = p(1:10) * v(1:10)
    res = sum(p+q)
    if ( res == ans3 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10:1) = p(1:10:1) * q(1:10:1)
    q(1:10:1) = p(1:10:1) * v(1:10:1)
    res = sum(p+q)
    if ( res == ans3 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:) = p(:) * q(:)
    q(:) = p(:) * v(:)
    res = sum(p+q)
    if ( res == ans3 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:) = p(1:) * q(1:)
    q(1:) = p(1:) * v(1:)
    res = sum(p+q)
    if ( res == ans3 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:10) = p(:10) * q(:10)
    q(:10) = p(:10) * v(:10)
    res = sum(p+q)
    if ( res == ans3 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10) = p(1:10) / q(1:10)
    q(1:10) = p(1:10) / v(1:10)
    res = sum(p+q)
    if ( res == ans4 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:10:1) = p(1:10:1) / q(1:10:1)
    q(1:10:1) = p(1:10:1) / v(1:10:1)
    res = sum(p+q)
    if ( res == ans4 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:) = p(:) / q(:)
    q(:) = p(:) / v(:)
    res = sum(p+q)
    if ( res == ans4 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(1:) = p(1:) / q(1:)
    q(1:) = p(1:) / v(1:)
    res = sum(p+q)
    if ( res == ans4 ) then
      ok = .true.
    else
      ok = .false.
      goto 200
    endif

    call init2
    p(:10) = p(:10) / q(:10)
    q(:10) = p(:10) / v(:10)
    res = sum(p+q)
    if ( res == ans4 ) then
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

    v = (/1_1,0_1,1_1,-1_1,2_1,1_1,0_1,2_1,0_1,-1_1/)
    w = (/-1_1,1_1,1_1,-1_1,3_1,2_1,1_1,2_1,1_1,1_1/)
    t = (/0_1,1_1,1_1,-1_1,1_1,1_1,1_1,-1_1,2_1,-1_1/)
    s = (/-1_1,2_1,1_1,-2_1,1_1,-2_1,3_1,2_1,1_1,1_1/)

  end subroutine

  subroutine init2()

    p = (/1_1,0_1,1_1,-1_1,2_1,1_1,0_1,2_1,0_1,-1_1/)
    q = (/-1_1,1_1,1_1,-1_1,3_1,2_1,1_1,2_1,1_1,1_1/)
    v = (/-1_1,2_1,1_1,-2_1,1_1,-2_1,3_1,2_1,1_1,1_1/)

  end subroutine

end program main

