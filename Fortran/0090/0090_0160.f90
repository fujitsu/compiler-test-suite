program main

  common /com/v,w,t,s
  integer(kind=1),dimension(1:10) :: v,w,t,s
  integer(kind=1),dimension(1:10) :: p,q
  integer(kind=1),parameter :: ans1=25_1
  integer(kind=1),parameter :: ans2=-7_1
  integer(kind=1),parameter :: ans3=18_1
  integer(kind=1),parameter :: ans4=4_1
  integer(kind=1) res
  logical(kind=1) ok

  call init
  p(1:10) = v(1:10) + w(1:10)
  q(1:10) = t(1:10) + s(1:10)
  res = sum(p+q)
  if ( res == ans1 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10:1) = v(1:10:1) + w(1:10:1)
  q(1:10:1) = t(1:10:1) + s(1:10:1)
  res = sum(p+q)
  if ( res == ans1 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:) = v(:) + w(:)
  q(:) = t(:) + s(:)
  res = sum(p+q)
  if ( res == ans1 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:) = v(1:) + w(1:)
  q(1:) = t(1:) + s(1:)
  res = sum(p+q)
  if ( res == ans1 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:10) = v(:10) + w(:10)
  q(:10) = t(:10) + s(:10)
  res = sum(p+q)
  if ( res == ans1 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10) = v(1:10) - w(1:10)
  q(1:10) = t(1:10) - s(1:10)
  res = sum(p+q)
  if ( res == ans2 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10:1) = v(1:10:1) - w(1:10:1)
  q(1:10:1) = t(1:10:1) - s(1:10:1)
  res = sum(p+q)
  if ( res == ans2 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:) = v(:) - w(:)
  q(:) = t(:) - s(:)
  res = sum(p+q)
  if ( res == ans2 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:) = v(1:) - w(1:)
  q(1:) = t(1:) - s(1:)
  res = sum(p+q)
  if ( res == ans2 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:10) = v(:10) - w(:10)
  q(:10) = t(:10) - s(:10)
  res = sum(p+q)
  if ( res == ans2 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10) = v(1:10) * w(1:10)
  q(1:10) = t(1:10) * s(1:10)
  res = sum(p+q)
  if ( res == ans3 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10:1) = v(1:10:1) * w(1:10:1)
  q(1:10:1) = t(1:10:1) * s(1:10:1)
  res = sum(p+q)
  if ( res == ans3 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:) = v(:) * w(:)
  q(:) = t(:) * s(:)
  res = sum(p+q)
  if ( res == ans3 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:) = v(1:) * w(1:)
  q(1:) = t(1:) * s(1:)
  res = sum(p+q)
  if ( res == ans3 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:10) = v(:10) * w(:10)
  q(:10) = t(:10) * s(:10)
  res = sum(p+q)
  if ( res == ans3 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10) = v(1:10) / w(1:10)
  q(1:10) = t(1:10) / s(1:10)
  res = sum(p+q)
  if ( res == ans4 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:10:1) = v(1:10:1) / w(1:10:1)
  q(1:10:1) = t(1:10:1) / s(1:10:1)
  res = sum(p+q)
  if ( res == ans4 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:) = v(:) / w(:)
  q(:) = t(:) / s(:)
  res = sum(p+q)
  if ( res == ans4 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(1:) = v(1:) / w(1:)
  q(1:) = t(1:) / s(1:)
  res = sum(p+q)
  if ( res == ans4 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  p(:10) = v(:10) / w(:10)
  q(:10) = t(:10) / s(:10)
  res = sum(p+q)
  if ( res == ans4 ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

 100  continue


  if (ok) then
    print *,"OK"
  else
    print *,"NG : ",res
  endif

end program main

subroutine init()

  common /com/v,w,t,s
  integer(kind=1),dimension(1:10) :: v,w,t,s

  v = (/1_1,0_1,1_1,-1_1,2_1,1_1,0_1,2_1,0_1,-1_1/)
  w = (/-1_1,1_1,1_1,-1_1,3_1,2_1,1_1,2_1,1_1,1_1/)
  t = (/0_1,1_1,1_1,-1_1,1_1,1_1,1_1,-1_1,2_1,-1_1/)
  s = (/-1_1,2_1,1_1,-2_1,1_1,-2_1,3_1,2_1,1_1,1_1/)

end subroutine
