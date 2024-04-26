program main

  INTERFACE OPERATOR (+)
    INTEGER(8) FUNCTION f_mercury(lo_aaa,r_bbb)
      LOGICAL*1 lo_aaa(2,2)
      INTENT(IN) :: lo_aaa
      integer(4) ::  r_bbb(2,2,2)
      INTENT(IN) :: r_bbb
    END FUNCTION f_mercury
  END INTERFACE

  real(8) :: result
  real(8),parameter :: answer=55.0
  integer(8) :: hhhh

  hhhh=0

  do i = RESHAPE((/.TRUE._1,.TRUE._1,.TRUE._1,.FALSE._1/),(/2,2/)) &
        +RESHAPE((/1,2,3,4,5,6,7,8 /),(/2,2,2/)) &
         ,10, 1
    hhhh = hhhh + i
 end do

  result = real(hhhh)

    if ( result .eq. answer ) then
     print *,"ok",result
   else
     print *,"ng",result,answer
   endif 

stop
end program main

INTEGER(8) FUNCTION f_mercury(lo_aaa,r_bbb)
  LOGICAL*1 lo_aaa(2,2)
  INTENT(IN) :: lo_aaa
  integer(4) :: r_bbb(2,2,2)
  INTENT(IN) :: r_bbb
  f_mercury=1_8
  return
END FUNCTION f_mercury

