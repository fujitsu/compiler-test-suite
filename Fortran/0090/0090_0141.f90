program main

  common /com/v,u
  integer(kind=2),dimension(1:10) :: v,u
  integer(kind=2),parameter :: ans1=8_2,ans2=-2_2
  integer(kind=2),parameter :: ans3=13_2,ans4=2_2
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
  v(1:9) = v(2:10) / ( u(2:10) + 1_2 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) / ( u(2:10:1) + 1_2 )

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
  integer(kind=2),dimension(1:10) :: v,u

  v = (/1_2,0_2,1_2,-1_2,2_2,1_2,0_2,2_2,0_2,-1_2/)
  u = (/0_2,0_2,0_2,-2_2,2_2,2_2,0_2,2_2,3_2,-2_2/)

end subroutine
