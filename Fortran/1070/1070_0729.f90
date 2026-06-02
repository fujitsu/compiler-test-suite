#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT_NG call simprintl("NG")
#define PRINT_OK call simprintl("OK")
#else
#define USE_SIMFUNC
#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"
#endif

#if defined(ROLL_TIMES)
#define N ROLL_TIMES
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

integer function ir4i4()
  USE_SIMFUNC
  integer*8  a,va(10)/52428,9*0/
  real*4 var,std,cnt
  a = va(1)+1
  var = ibits(a, 3,8)
  std = ibits(va(1)+1,4,4)
  cnt = ibits(52429,1,6)

  if (std .eq. 12.0 .and. var .eq. 153.0 .and. cnt .eq. 38.0) then
     ir4i4 = 1
  else
     ir4i4 = 0
     !         write(6,*) var,std,cnt
  endif
end 

integer function ir8i4()
  USE_SIMFUNC
  integer*8  a,va(10)/52428,9*0/
  real*8 var,std,cnt
  a = va(1)+1
  var = ibits(a, 3,8)
  std = ibits(va(1)+1,4,4)
  cnt = ibits(52429,1,6)

  if (std .eq. 12.0 .and. var .eq. 153.0 .and. cnt .eq. 38.0) then
     ir8i4 = 1
  else
     ir8i4 = 0
     !         write(6,*) var,std,cnt
  endif
end 


#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC
  if (ir4i4() .eq. 1 .and. ir8i4() .eq. 1) then
     PRINT_OK
  else
     PRINT_NG
  endif

end program main
#endif
