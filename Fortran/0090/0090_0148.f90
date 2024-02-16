program main

  common /com/v,u
  complex(kind=8),dimension(1:10) :: v,u
  real(kind=8),parameter :: ans1=11.90000000000000_8,ans2=-3.700000000000000_8
  real(kind=8),parameter :: ans3=-5.570000000000000_8,ans4=7.332953556736021_8
  real(kind=8),parameter :: error=0.0000000000002_8
  real(kind=8) res
  logical(kind=1) ok

  call init
  v(1:9) = v(2:10) + u(2:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans1 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) + u(2:10:1)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans1 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9) = v(2:10) - u(2:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans2 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) - u(2:10:1)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans2 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9) = v(2:10) * u(2:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans3 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) * u(2:10:1)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans3 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9) = v(2:10) / u(2:10)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans4 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(1:9:1) = v(2:10:1) / u(2:10:1)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans4 - res) <= error ) then
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

  common /com/v,u
  complex(kind=8),dimension(1:10) :: v,u

  v = (/(1.0_8,0.0_8),(1.0_8,-1.0_8),(1.2_8,1.4_8),(0.0_8,2.2_8),(0.4_8,-1.2_8),(0.4_8,0.2_8),(0.0_8,-4.0_8),(2.2_8,1.5_8),(0.0_8,-2.2_8),(3.0_8,-2.0_8)/)
  u = (/(0.0_8,0.5_8),(1.2_8,-1.2_8),(1.0_8,0.4_8),(0.1_8,2.1_8),(-0.4_8,-0.2_8),(1.4_8,-1.2_8),(2.0_8,1.0_8),(2.2_8,0.5_8),(0.3_8,-0.1_8),(0.0_8,-1.3_8)/)

end subroutine
