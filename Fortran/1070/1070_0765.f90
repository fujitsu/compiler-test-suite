#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT_NG call simprintl("NG")
#define PRINT_OK call simprintl("OK")
#else
#define USE_SIMFUNC
#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"
#endif

program main
  USE_SIMFUNC
  implicit none
  integer*4 i,a(10),b(1),j,offset
  data (a(i),i=1,10),b(1)/0,1,2,3,4,5,6,7,8,9,0/
  offset=536870912
  j=10+offset
  do i=1,10
     b(1)=b(1)+a(j-offset)
     j=j-1
  enddo
  if ( b(1) .eq. 45 ) then
     PRINT_OK
  else
     PRINT_NG
  end if
end program main

