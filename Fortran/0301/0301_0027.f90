subroutine foo(flag1, flag2, val)
  integer :: flag1, flag2, val
  do j=1,10
  
  IF ( flag2 .eq. 0 ) THEN
    FF=3335_8
    DO 
      FF=FF+1
      IF ((flag1 .eq.0).OR.FF.GT.(3339)) EXIT
      val=val + j
     END DO
  END IF 
 END DO
end subroutine foo

program test
  integer val
  val = 0
  call foo(1, 1, val)
  write(6,*) val	
end program test
