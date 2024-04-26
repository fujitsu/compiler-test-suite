program main
  real*4 :: f1, f2
  real*8 :: d1, d2
  complex*8  :: fc1
  complex*16 :: dc1
  
  f1 = 0.1
  f2 = -0.0
  call test_sign(f1, f2)
  
  d1 = 0.1d0
  d2 = -0.0d0
  call test_dsign(d1, d2)
  
  f1 = -0.1
  call test_aint(f1)
  
  d1 = -0.1d0
  call test_dint(d1)
  
  f1 = -0.1
  call test_anint(f1)
  
  d1 = -0.1d0
  call test_dnint(d1)
  
  f1 = -0.0
  f2 = -1.0
  call test_atan2(f1, f2)

  d1 = -0.0d0
  d2 = -1.0d0
  call test_datan2(d1, d2)
  
  fc1 = cmplx(-1.0, -0.0)
  call test_log(fc1)
  
  dc1 = dcmplx(-1.0d0, -0.0d0)
  call test_dlog(dc1)
  
  fc1 = cmplx(-1.0, -0.0)
  call test_csqrt(fc1)
  
  dc1 = cmplx(-1.0d0, -0.0d0)
  call test_cdsqrt(dc1)
contains
  subroutine test_sign(x, y)
    real*4 :: x, y
    write(*,*)            '========== TEST SIGN =========='
    write(*,'(A,Z8.8)')   'x           =', x
    write(*,'(A,Z8.8)')   'y           =', y
    write(*,'(A,Z8.8)')   'sign(x,y)   =', sign(x, y)
  end subroutine test_sign
  
  subroutine test_dsign(x, y)
    real*8 :: x, y
    write(*,*)            '========== TEST DSIGN =========='
    write(*,'(A,Z16.16)') 'x           =', x
    write(*,'(A,Z16.16)') 'y           =', y
    write(*,'(A,Z16.16)') 'dsign(x,y)  =', dsign(x, y)
  end subroutine test_dsign
  
  subroutine test_aint(x)
    real*4 :: x
    write(*,*)            '========== TEST AINT =========='
    write(*,'(A,Z8.8)')   'x           =', x
    write(*,'(A,Z8.8)')   'aint(x)     =', aint(x)
  end subroutine test_aint
  
  subroutine test_dint(x)
    real*8 :: x
    write(*,*)            '========== TEST DINT =========='
    write(*,'(A,Z16.16)') 'x           =', x
    write(*,'(A,Z16.16)') 'dint(x)     =', dint(x)
  end subroutine test_dint
  
  subroutine test_anint(x)
    real*4 :: x
    write(*,*)            '========== TEST ANINT =========='
    write(*,'(A,Z8.8)')   'x           =', x
    write(*,'(A,Z8.8)')   'anint(x)    =', anint(x)
  end subroutine test_anint
  
  subroutine test_dnint(x)
    real*8 :: x
    write(*,*)            '========== TEST DNINT =========='
    write(*,'(A,Z16.16)') 'x           =', x
    write(*,'(A,Z16.16)') 'dnint(x)    =', dnint(x)
  end subroutine test_dnint
  
  subroutine test_atan2(x, y)
    real*4 :: x, y
    write(*,*)            '========== TEST ATAN2 =========='
    write(*,'(A,Z8.8)')   'x           =', x
    write(*,'(A,Z8.8)')   'y           =', y
    write(*,'(A,Z8.8)')   'atan2(x,y)  =', atan2(x, y)
  end subroutine test_atan2
  
  subroutine test_datan2(x, y)
    real*8 :: x, y
    write(*,*)            '========== TEST DATAN2 =========='
    write(*,'(A,Z16.16)') 'x           =', x
    write(*,'(A,Z16.16)') 'y           =', y
    write(*,'(A,Z16.16)') 'datan2(x,y) =', datan2(x, y)
  end subroutine test_datan2
  
  subroutine test_log(x)
    complex*8 :: x
    write(*,*)                       '========== TEST LOG =========='
    write(*,'(A,Z8.8,A,Z8.8,A)')     'x           = (', real(x), ', ', aimag(x), ')'
    write(*,'(A,Z8.8,A,Z8.8,A)')     'log(x)      = (', real(clog(x)), ', ', aimag(clog(x)), ')'
  end subroutine test_log
  
  subroutine test_dlog(x)
    complex*16 :: x
    write(*,*)                       '========== TEST DLOG =========='
    write(*,'(A,Z16.16,A,Z16.16,A)') 'x           = (', dble(x), ', ', dimag(x), ')'
    write(*,'(A,Z16.16,A,Z16.16,A)') 'dlog(x)     = (', dble(cdlog(x)), ', ', dimag(cdlog(x)), ')'
  end subroutine test_dlog
  
  subroutine test_csqrt(x)
    complex*8 :: x
    write(*,*)                       '========== TEST CSQRT =========='
    write(*,'(A,Z8.8,A,Z8.8,A)')     'x           = (', real(x), ', ', aimag(x), ')'
    write(*,'(A,Z8.8,A,Z8.8,A)')     'csqrt(x)    = (', real(csqrt(x)), ', ', aimag(csqrt(x)), ')'
  end subroutine test_csqrt
  
  subroutine test_cdsqrt(x)
    complex*16 :: x
    write(*,*)                       '========== TEST CDSQRT =========='
    write(*,'(A,Z16.16,A,Z16.16,A)') 'x           = (', dble(x), ', ', dimag(x), ')'
    write(*,'(A,Z16.16,A,Z16.16,A)') 'cdsqrt(x)   = (', dble(cdsqrt(x)), ', ', dimag(cdsqrt(x)), ')'
  end subroutine test_cdsqrt
end program main
