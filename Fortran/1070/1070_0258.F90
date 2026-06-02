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

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=4),dimension(N) :: a,b,res
  integer(kind=4),dimension(N) :: c,d,e
  call init(a,b,c,d,N,e,res)
  do i=1,2
     call test(a,b,c,d,e)
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine init(a,b,c,d,n1,e,res)
  USE_SIMFUNC
  integer(kind=4),dimension(1:n1) :: a,b,res
  integer(kind=4),dimension(1:n1) :: c,d,e
  !ocl nosimd
  do i=1,n1
     a(i) = 0_4
     b(i) = i * 2_4
     c(i) = i
     d(i) = i
     if (i .gt. N/2) then
        res(i) = b(i)
        e(i) = 1
     else
        res(i) = 0_4
        e(i) = 0
     endif
  enddo
end subroutine init
#endif

subroutine test(a,b,c,d,e)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b
  integer(kind=4),dimension(1:N) :: c,d,e
  !ocl simd(unaligned)
  do i=1,N
     if (e(i) .eq. 1) then
        a(c(i)) = b(d(i))
     endif
  enddo
end subroutine test
