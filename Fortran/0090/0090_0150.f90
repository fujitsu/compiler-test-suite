program main

  common /com/v,u
  integer(kind=1),dimension(1:10) :: v,u
  integer(kind=1),parameter :: ans1=14_1,ans2=0_1
  integer(kind=1),parameter :: ans3=13_1,ans4=4_1
  logical(kind=1) ok

  call init
  v(2:10) = v(1:9) + u(1:9)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) + u(1:9:1)

  if ( ans1 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10) = v(1:9) - u(1:9)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) - u(1:9:1)

  if ( ans2 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10) = v(1:9) * u(1:9)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) * u(1:9:1)

  if ( ans3 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10) = v(1:9) / ( u(1:9) + 1_1 )

  if ( ans4 == sum(v) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) / ( u(1:9:1) + 1_1 )

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
  integer(kind=1),dimension(1:10) :: v,u

  v = (/1_1,0_1,1_1,-1_1,2_1,1_1,0_1,2_1,0_1,-1_1/)
  u = (/0_1,0_1,0_1,-2_1,2_1,2_1,0_1,2_1,3_1,-2_1/)

end subroutine
