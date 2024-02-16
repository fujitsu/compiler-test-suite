program main

  INTERFACE OPERATOR (+)
    INTEGER(8_2) FUNCTION f_mercury(lo_aaa,r_bbb)
      LOGICAL*1 lo_aaa(1,2,1:3)
      INTENT(IN) :: lo_aaa
      REAL*4 r_bbb(2_8,2,2)
      INTENT(IN) :: r_bbb
    END FUNCTION f_mercury
  END INTERFACE

  INTEGER*1 HD/-66_1/
  real(8) :: result
  real(8),parameter :: answer=55.0
  integer(8) :: hoge
  hoge=0

  do i = RESHAPE((/.FALSE._1,.FALSE._1,.TRUE._1, &
          .TRUE._1,.TRUE._1,.FALSE._1/),(/1,2,3/))+RESHAPE((/ &
          (/6.6E-4,9.3E-37*(-1.5E35_4)/),(934_2+( &
          -6.9166713E27),126_1*(-4.110654E-20_4),HD=43,51,9),( &
          3.6,0.0,HD=-114,-111,4),2.3,2.4 /),(/2,2,2/)),10, 1
    hoge = hoge + i
  end do

  result = real(hoge)
    if ( result .eq. answer ) then
    print *,"ok",result
  else
    print *,"ng",result,answer
  endif
stop
end program main
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

INTEGER(8_2) FUNCTION f_mercury(lo_aaa,r_bbb)
  LOGICAL*1 lo_aaa(1,2,1:3)
  INTENT(IN) :: lo_aaa
  REAL*4 r_bbb(2_8,2,2)
  INTENT(IN) :: r_bbb
  f_mercury=1_8
  return
END FUNCTION f_mercury
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

