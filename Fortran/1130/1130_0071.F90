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
  real*4::flx_h_pl(8)
  real*8::res, resd
  data flx_h_pl/8*1/
  resd = dummy()
  res = sub(flx_h_pl)
  if (abs(res-6.0_8).ge.1E-14 ) then
     PRINT_NG
  else
     PRINT_OK
  end if
!  call simprintl(res)
!  print *, res
  
contains
  real*8 function sub(flx_h_pl) result(res)
    real*4::flx_h_pl(8)
    real*8::tmp_flx_h=0._8
    
    do i=1,6
       tmp_flx_h = tmp_flx_h + flx_h_pl(i)
    end do
    res = tmp_flx_h
  end function sub
  
  real*8 function dummy() result(resd)
    integer::i
    real*8,dimension(1024)::a,b,c
    data a/1024*-1/,b/1024*-1/,c/1024*-1/
    do i=1,1024
       a(i) = a(i) + b(i) + c(i)
    end do
    resd = SUM(a)
  end function dummy
end program main
