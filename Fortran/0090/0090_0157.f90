program main

  common /com/v,u
  complex(kind=4),dimension(1:10) :: v,u
  real(kind=4),parameter :: ans1=13.6999989_4,ans2=-5.49999952_4
  real(kind=4),parameter :: ans3=1.43000054_4,ans4=1.48679972_4
  real(kind=4),parameter :: error=0.000002_4
  real(kind=4) res
  logical(kind=1) ok

  call init
  v(2:10) = v(1:9) + u(1:9)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans1 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) + u(1:9:1)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans1 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10) = v(1:9) - u(1:9)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans2 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) - u(1:9:1)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans2 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10) = v(1:9) * u(1:9)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans3 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) * u(1:9:1)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans3 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10) = v(1:9) / u(1:9)
  res = real(sum(v))+aimag(sum(v))

  if ( abs(ans4 - res) <= error ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

  call init
  v(2:10:1) = v(1:9:1) / u(1:9:1) 
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
  complex(kind=4),dimension(1:10) :: v,u

  v = (/(1.0_4,0.0_4),(1.0_4,-1.0_4),(1.2_4,1.4_4),(0.0_4,2.2_4),(0.4_4,-1.2_4),(0.4_4,0.2_4),(0.0_4,-4.0_4),(2.2_4,1.5_4),(0.0_4,-2.2_4),(3.0_4,-2.0_4)/)
  u = (/(0.0_4,0.5_4),(1.2_4,-1.2_4),(1.0_4,0.4_4),(0.1_4,2.1_4),(-0.4_4,-0.2_4),(1.4_4,-1.2_4),(2.0_4,1.0_4),(2.2_4,0.5_4),(0.3_4,-0.1_4),(0.0_4,-1.3_4)/)

end subroutine
