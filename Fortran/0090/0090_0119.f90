program main

  complex(kind=16),dimension(1:10) :: v,u
  complex(kind=16),parameter :: ans=(5.0_16,5.0_16)
  real(kind=16),parameter    :: error=0.0000000000000000000001
  logical*1 ok

  u = (/( 1.1_16, 1.2_16),( 0.0_16, 1.0_16),( 1.0_16,-1.0_16),(-1.1_16, 0.5_16),( 2.1_16, 1.1_16),( 0.9_16,-1.0_16),( 0.0_16, 3.0_16),( 1.7_16,-0.8_16),( 0.3_16, 0.0_16),(-1.0_16, 1.0_16)/)


  v(1:10) = u(1:10)

  if ( (abs(real(sum(v) - ans)) <= error) .and. (abs(imag(sum(v) - ans)) <= error) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:10:1) = u(1:10:1)

  if ( (abs(real(sum(v) - ans)) <= error) .and. (abs(imag(sum(v) - ans)) <= error) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(1:) = u(1:)

  if ( (abs(real(sum(v) - ans)) <= error) .and. (abs(imag(sum(v) - ans)) <= error) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:10) = u(:10)

  if ( (abs(real(sum(v) - ans)) <= error) .and. (abs(imag(sum(v) - ans)) <= error) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif


  v(:) = u(:)

  if ( (abs(real(sum(v) - ans)) <= error) .and. (abs(imag(sum(v) - ans)) <= error) ) then
    ok = .true.
  else
    ok = .false.
    goto 100
  endif

 100  continue

  if (ok) then
    print *,"OK"
  else
    print *,"NG : ",v
  endif

end program main
