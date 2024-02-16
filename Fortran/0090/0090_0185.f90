program main

  common /com/ok  
  logical(kind=1) :: ok
  ok = .true.

  call i1_test
  call i2_test
  call i4_test
  call i8_test
  call r4_test
  call r8_test
  call r16_test
  call c8_test
  call c16_test
  call c32_test

  if (ok) then
    print *,"OK"
  endif

end program main

subroutine i1_test

  common /com/ok  
  logical(kind=1) :: ok
  integer(kind=1),dimension(1:20) :: v,u,t,s
  integer(kind=1),parameter :: ans = 55_1
  integer(kind=1) res

  call init

  v(1:10:2) = v(1:10:2) + u(1:10:2)
  t(3:12:2) = t(3:12:2) + s(1:10:2)

  res = sum(v) - sum(t)

  if ( res .ne. ans ) then
    ok = .false.
    print *,"I1TEST-NG : ",res
  endif

  contains

  subroutine init
    v = (/(int(i,kind=1),i=1,20)/)
    u = (/(int(i,kind=1),i=20,1,-1)/)
    t = u
    s = v
  end subroutine

end subroutine

subroutine i2_test

  common /com/ok  
  logical(kind=1) :: ok
  integer(kind=2),dimension(1:20) :: v,u,t,s
  integer(kind=2),parameter :: ans = 55_2
  integer(kind=2) res

  call init

  v(1:10:2) = v(1:10:2) + u(1:10:2)
  t(3:12:2) = t(3:12:2) + s(1:10:2)

  res = sum(v) - sum(t)

  if ( res .ne. ans ) then
    ok = .false.
    print *,"I2TEST-NG : ",res
  endif

  contains

  subroutine init
    v = (/(int(i,kind=2),i=1,20)/)
    u = (/(int(i,kind=2),i=20,1,-1)/)
    t = u
    s = v
  end subroutine

end subroutine

subroutine i4_test

  common /com/ok  
  logical(kind=1) :: ok
  integer(kind=4),dimension(1:20) :: v,u,t,s
  integer(kind=4),parameter :: ans = 55_4
  integer(kind=4) res

  call init

  v(1:10:2) = v(1:10:2) + u(1:10:2)
  t(3:12:2) = t(3:12:2) + s(1:10:2)

  res = sum(v) - sum(t)

  if ( res .ne. ans ) then
    ok = .false.
      print *,"I4TEST-NG : ",res
  endif

  contains

  subroutine init
    v = (/(int(i,kind=4),i=1,20)/)
    u = (/(int(i,kind=4),i=20,1,-1)/)
    t = u
    s = v
  end subroutine

end subroutine

subroutine i8_test

  common /com/ok  
  logical(kind=1) :: ok
  integer(kind=8),dimension(1:20) :: v,u,t,s
  integer(kind=8),parameter :: ans = 55_8
  integer(kind=8) res

  call init

  v(1:10:2) = v(1:10:2) + u(1:10:2)
  t(3:12:2) = t(3:12:2) + s(1:10:2)

  res = sum(v) - sum(t)

  if ( res .ne. ans ) then
    ok = .false.
    print *,"I8TEST-NG : ",res
  endif

  contains

  subroutine init
    v = (/(int(i,kind=8),i=1,20)/)
    u = (/(int(i,kind=8),i=20,1,-1)/)
    t = u
    s = v
  end subroutine

end subroutine

subroutine r4_test

  common /com/ok  
  logical(kind=1) :: ok
  real(kind=4),dimension(1:20) :: v,u,t,s
  real(kind=4),parameter :: ans = 55._4
  real(kind=4) res

  call init

  v(1:10:2) = v(1:10:2) + u(1:10:2)
  t(3:12:2) = t(3:12:2) + s(1:10:2)

  res = sum(v) - sum(t)

  if ( res .ne. ans ) then
    ok = .false.
    print *,"R4TEST-NG : ",res
  endif

  contains

  subroutine init
    v = (/(real(i,kind=4),i=1,20)/)
    u = (/(real(i,kind=4),i=20,1,-1)/)
    t = u
    s = v
  end subroutine

end subroutine

subroutine r8_test

  common /com/ok  
  logical(kind=1) :: ok
  real(kind=8),dimension(1:20) :: v,u,t,s
  real(kind=8),parameter :: ans = 55._8
  real(kind=8) res

  call init

  v(1:10:2) = v(1:10:2) + u(1:10:2)
  t(3:12:2) = t(3:12:2) + s(1:10:2)

  res = sum(v) - sum(t)

  if ( res .ne. ans ) then
    ok = .false.
    print *,"R8TEST-NG : ",res
  endif

  contains

  subroutine init
    v = (/(real(i,kind=8),i=1,20)/)
    u = (/(real(i,kind=8),i=20,1,-1)/)
    t = u
    s = v
  end subroutine

end subroutine

subroutine r16_test

  common /com/ok  
  logical(kind=1) :: ok
  real(kind=16),dimension(1:20) :: v,u,t,s
  real(kind=16),parameter :: ans = 55._16
  real(kind=16) res

  call init

  v(1:10:2) = v(1:10:2) + u(1:10:2)
  t(3:12:2) = t(3:12:2) + s(1:10:2)

  res = sum(v) - sum(t)

  if ( res .ne. ans ) then
    ok = .false.
    print *,"R16TEST-NG : ",res
  endif

  contains

  subroutine init
    v = (/(real(i,kind=16),i=1,20)/)
    u = (/(real(i,kind=16),i=20,1,-1)/)
    t = u
    s = v
  end subroutine

end subroutine

subroutine c8_test

  common /com/ok  
  logical(kind=1) :: ok
  complex(kind=4),dimension(1:20) :: v,u,t,s
  complex(kind=4),parameter :: ans = 55._4
  real(kind=4) res

  call init

  v(1:10:2) = v(1:10:2) + u(1:10:2)
  t(3:12:2) = t(3:12:2) + s(1:10:2)

  res = max(real(sum(v)),aimag(sum(v))) - max(real(sum(t)),aimag(sum(t)))

  if ( res .ne. ans ) then
    ok = .false.
    print *,"C8TEST-NG : ",res
  endif

  contains

  subroutine init
    v = (/(cmplx(real(i,kind=4),real(11-i,kind=4)),i=1,20)/)
    u = (/(cmplx(real(i,kind=4),real(11-i,kind=4)),i=20,1,-1)/)
    t = u
    s = v
  end subroutine

end subroutine

subroutine c16_test

  common /com/ok  
  logical(kind=1) :: ok
  complex(kind=8),dimension(1:20) :: v,u,t,s
  complex(kind=8),parameter :: ans = 55._8
  real(kind=8) res

  call init

  v(1:10:2) = v(1:10:2) + u(1:10:2)
  t(3:12:2) = t(3:12:2) + s(1:10:2)

  res = max(real(sum(v)),aimag(sum(v))) - max(real(sum(t)),aimag(sum(t)))

  if ( res .ne. ans ) then
    ok = .false.
    print *,"C16TEST-NG : ",res
  endif

  contains

  subroutine init
    v = (/(cmplx(real(i,kind=8),real(11-i,kind=8)),i=1,20)/)
    u = (/(cmplx(real(i,kind=8),real(11-i,kind=8)),i=20,1,-1)/)
    t = u
    s = v
  end subroutine

end subroutine

subroutine c32_test

  common /com/ok  
  logical(kind=1) :: ok
  complex(kind=16),dimension(1:20) :: v,u,t,s
  complex(kind=16),parameter :: ans = 55._16
  real(kind=16) res

  call init

  v(1:10:2) = v(1:10:2) + u(1:10:2)
  t(3:12:2) = t(3:12:2) + s(1:10:2)

  res = max(real(sum(v)),aimag(sum(v))) - max(real(sum(t)),aimag(sum(t)))

  if ( res .ne. ans ) then
    ok = .false.
    print *,"C16TEST-NG : ",res
  endif

  contains

  subroutine init
    v = (/(cmplx(real(i,kind=16),real(11-i,kind=16)),i=1,20)/)
    u = (/(cmplx(real(i,kind=16),real(11-i,kind=16)),i=20,1,-1)/)
    t = u
    s = v
  end subroutine

end subroutine
