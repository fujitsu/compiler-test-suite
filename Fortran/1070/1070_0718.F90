#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT(x)  call simprint(x)
#define PRINTL(x) call simprintl(x)
#else
#define USE_SIMFUNC
#define PRINT(x)  !write (*,...,advance='no') x 
#define PRINTL(x) write (*,*) x
#endif

#define N 64

subroutine init(a,b)
  real(4),dimension(N)::a,b
  integer::i
!ocl nosimd
!ocl nounroll  
  do i=1,N
     a(i) = i
     b(i) = i * 3.14
  end do
end subroutine init

subroutine test(a,b,c)
  real(4),dimension(N)::a,b,c
  integer::i
  do i=1,N
     c(i) = a(i) * b(i)
  end do
end subroutine test

subroutine print_result(c)
  USE_SIMFUNC
  real(4),dimension(N)::c
  integer::i

  do i=1,N
#ifdef SIM_RUN
     PRINT(i)
     PRINTL(c(i))
#else
     print '(" ",i0, " ", f0.6)' , i, c(i)
#endif     
  end do
  
end subroutine print_result

program main
  real(4),dimension(N)::a,b,c
  call init(a,b)
  call test(a,b,c)
  call print_result(c)
end program main
