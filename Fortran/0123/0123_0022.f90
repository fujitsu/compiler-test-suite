  block data
    common /abc/ rr2,rr4,rr8
    real(kind=2) :: rr2 = 4.0
    real(kind=4) :: rr4 = 3.0
    real(kind=8) :: rr8 = 2.0
  end block data

  program main
    common /abc/ rr2,rr4,rr8
    real(kind=2) :: rr2
    real(kind=4) :: rr4
    real(kind=8) :: rr8

    real(kind=8) :: ret

    ret = rr2+rr4+rr8
    
    if (ret .eq. 9.0) then
       print *, "OK"
    else
       print *, "NG"       
    endif
  end program main
