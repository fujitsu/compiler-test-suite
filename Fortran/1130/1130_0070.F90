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
#define N 255
#elif defined(MOD)
#define N 65
#else
#define N 64
#endif

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  integer(kind=4),dimension(N) :: a,b,res
  common //a,b
  call init(res)
  do i=1,2
     call test(N)
  enddo

  do i=1,N
     if(a(i) .ne. res(i)) then
        PRINT_NG
     endif
  enddo

  PRINT_OK
end program main

subroutine init(res)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b,res
  common //a,b

!ocl nosimd
  do i=1,N
     a(i) = 0_8
     b(i) = 1_8
     res(i) = 1_8
  enddo

end subroutine init
#endif

subroutine test(n)
  USE_SIMFUNC
  integer(kind=4),dimension(1:N) :: a,b
  common //a,b

!OCL CACHE_SECTOR_SIZE(2,1,10,4)
!OCL CACHE_SUBSECTOR_ASSIGN(b)
  do i=1,n
     a(i) = b(i)
  enddo
!OCL END_CACHE_SUBSECTOR
!OCL END_CACHE_SECTOR_SIZE

end subroutine test
