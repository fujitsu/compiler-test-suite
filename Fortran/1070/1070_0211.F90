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

#if !defined(ASM_ONLY)
program main
  USE_SIMFUNC

  logical(kind=4),dimension(N) :: dest,a,b
  call init(dest,a,b)
  do i=1,2
     call test(dest,a,b)
  enddo
  do i=1,N/2
     if(b(i) .neqv. dest(i)) then
        PRINT_NG
     endif
  enddo
  do i=N/2+1,N
     if(a(i) .neqv. dest(i)) then
        PRINT_NG
     endif
  enddo
  PRINT_OK
end program main

subroutine init(dest,a,b)
  USE_SIMFUNC
  logical(kind=4),dimension(1:N) :: dest,a,b
  !ocl nosimd
  do i=1,N/2
     dest(i) = .FALSE.
     a(i) = .TRUE.
     b(i) = .FALSE.
  enddo
  !ocl nosimd
  do i=N/2+1,N
     dest(i) = .FALSE.
     a(i) = .TRUE.
     b(i) = .TRUE.
  enddo
end subroutine init
#endif

subroutine test(dest,a,b)
  USE_SIMFUNC
  logical(kind=4), dimension(N) :: dest,a,b
  !ocl simd(unaligned)
  do i=1,N
     if(a(i) .eqv. b(i)) then
        dest(i) = a(i)
     else
        dest(i) = b(i)
     endif
  enddo
end subroutine test
