#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT_NG call simprintl("NG")
#define PRINT_OK call simprintl("OK")
#define PRINT_ARG(x) call simprintl(x)
#else
#define USE_SIMFUNC
#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"
#define PRINT_ARG(x) print *,x
#endif

!original perf0084
subroutine FTRRK1(tt,a,b,c)
  integer*4,parameter::n=1024
  integer*4::i,tmp,a(n),b(n),c(n)
  integer*8::tt(n)
  do i=1,n
     tmp  = a(b(i))
     if(c(i).ge.0 .or. (c(i).ge.0 .and. c(i).lt.0 )) cycle
     c(i) = tt(tmp)
  end do
end subroutine FTRRK1

program main
  USE_SIMFUNC
  integer*4,parameter::n=1024,cinit=-1,cres=0
  integer*4::i,a(n),b(n),c(n)
  integer*8::tt(n)
  interface
     subroutine FTRRK1(tt,a,b,c)
       integer*4,parameter::n=1024
       integer*4::i,tmp,a(n),b(n),c(n)
       integer*8::tt(n)
     end subroutine FTRRK1
  end interface
  
  do i=1,n
     a(i) = MOD(i,33)+1
     b(i) = MOD(i*i+i/2,n)+1
     c(i) = cinit
     tt(i) = cres
  end do
  call FTRRK1(tt,a,b,c)

  do i=1,n
     if(c(i).ne.cres) then
        PRINT_NG
        PRINT_ARG(i)
        PRINT_ARG(c(i))
     end if
  end do
  PRINT_OK
end program main
