program main

  common /com/v,u
  integer(kind=4),dimension(1:10) :: v,u
  integer(kind=4),parameter :: ans1=8_4,ans2=-2_4
  integer(kind=4),parameter :: ans3=13_4,ans4=2_4
  logical(kind=1) ok

  call init
  v(1:9) = v(2:10) + u(2:10)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) + u(2:10:1)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9) = v(2:10) - u(2:10)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) - u(2:10:1)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9) = v(2:10) * u(2:10)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) * u(2:10:1)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9) = v(2:10) / ( u(2:10) + 1_4 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) / ( u(2:10:1) + 1_4 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

 100  continue


  if (ok) then
    print *,"OK"
  else
    print *,"NG : ",sum(v)
  endif

end program main

subroutine init()
  common /com/v,u
  integer(kind=4),dimension(1:10) :: v,u

  v = (/1_4,0_4,1_4,-1_4,2_4,1_4,0_4,2_4,0_4,-1_4/)
  u = (/0_4,0_4,0_4,-2_4,2_4,2_4,0_4,2_4,3_4,-2_4/)

end subroutine
