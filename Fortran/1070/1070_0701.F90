! option : -Kocl

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

#define EQUAL_CHECK(a, b) (a .ne. b)


#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  real*16 dest,cfunc,src,res
  data res/-5.0/
  src = 5.0

  dest = cfunc(src)

  if(EQUAL_CHECK(dest, res)) then
!     write(6,*) dest
!     write(6,*)res 
     PRINT_NG
   endif
   PRINT_OK
end program main

#endif

real*16 function cfunc(a)
  USE_SIMFUNC
  real*16 a
  cfunc = a + (-10.0)
end function cfunc
