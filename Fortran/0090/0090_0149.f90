program main

  common /com/v,u
  complex(kind=16),dimension(1:10) :: v,u
  real(kind=16),parameter :: ans1=11.9_16,ans2=-3.7_16
  real(kind=16),parameter :: ans3=-5.57_16,ans4=7.3329535567360200634687856580204063_16
  real(kind=16),parameter :: error=0.00000000000000000000001_16
  real(kind=16) res
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
  complex(kind=16),dimension(1:10) :: v,u

  v = (/(1.0_16,0.0_16),(1.0_16,-1.0_16),(1.2_16,1.4_16),(0.0_16,2.2_16),(0.4_16,-1.2_16),(0.4_16,0.2_16),(0.0_16,-4.0_16),(2.2_16,1.5_16),(0.0_16,-2.2_16),(3.0_16,-2.0_16)/)
  u = (/(0.0_16,0.5_16),(1.2_16,-1.2_16),(1.0_16,0.4_16),(0.1_16,2.1_16),(-0.4_16,-0.2_16),(1.4_16,-1.2_16),(2.0_16,1.0_16),(2.2_16,0.5_16),(0.3_16,-0.1_16),(0.0_16,-1.3_16)/)

end subroutine
