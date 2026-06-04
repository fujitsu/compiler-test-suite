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

#define EQUAL_CHECK(a, b) ((abs(real(a) - real(b))/abs(real(a))) .gt. 1.0E-6 .or. (abs(imag(a) - imag(b))/abs(imag(a))) .gt. 1.0E-6)

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  complex*16 dest,cfunc,src,res
  data res/(-5.0, 4.0)/
  src = cmplx(5.0, -8.0)

  dest = cfunc(src)

  if(EQUAL_CHECK(dest, res)) then
!     write(6,*) dest
!     write(6,*)res 
     PRINT_NG
   endif
   PRINT_OK
end program main

#endif

complex*16 function cfunc(a)
  USE_SIMFUNC
  complex*16 a
  cfunc = a + cmplx(-10.0, 12.0)
end function cfunc
