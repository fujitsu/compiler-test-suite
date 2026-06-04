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
#define M ROLL_TIMES
#elif defined(MOD)
#define M 1030
#else
#define M 1024
#endif

! compress :tsvc s341
subroutine sub(A,B,C,N)
  integer::I,J,K,N
  real(kind=4)::A(N),B(N),C(N)
  J=0
  K=0
  DO I=1, N
     IF(B(I) .GT. 0.D0)THEN
        J    = J + 1
        A(J) = J
     else
        K    = K + 1
        C(K) = K
     ENDIF
  enddo
end subroutine sub

#ifndef ASM_ONLY

subroutine init(A,B,C,RESA,RESC,N)
  integer::I,J,K,N
  real(kind=4)::A(N),B(N),C(N),RESA(N),RESC(N)
!ocl nosimd  
  DO I=1,N
     A(I) = -1
     B(I) = sin(I*3.3)
     C(I) = -cos(i*1.1)
     RESA(I) = A(I)
     RESC(I) = C(I)
  enddo

  J=0
  K=0
!ocl nosimd  
  DO I=1, N
     IF(B(I) .GT. 0.D0)THEN
        J    = J + 1
        RESA(J) = J
     else
        K    = K + 1
        RESC(K) = K
     ENDIF
  enddo
end subroutine init

subroutine check(A,C,RESA,RESC,N)
  USE_SIMFUNC
  integer::I,N
  real(kind=4)::A(N),C(N),RESA(N),RESC(N)
!ocl nosimd  
  do i=1,N
     if(A(i).ne.RESA(i)) then
#if defined(SIM_RUN)        
        call simprint("i:")
        call simprint(i)
        call simprint(" A(i):")
        call simprint(A(i))
        call simprint(" RESA(i):")
        call simprintl(RESA(i))
#else
        print *,i,A(i),RESA(i)
#endif        
        PRINT_NG
     end if
     if(C(i).ne.RESC(i)) then
#if defined(SIM_RUN)        
        call simprint("i:")
        call simprint(i)
        call simprint(" C(i):")
        call simprint(C(i))
        call simprint(" RESC(i):")
        call simprintl(RESC(i))
#else
        print *,i,C(i),RESC(i)
#endif        
        PRINT_NG
     end if
  end do
  PRINT_OK
end subroutine check
  
program main
  integer::N
  real(kind=4)::A(M),B(M),C(M),RESA(M),RESC(M)
  N = M
  call init(A,B,C,RESA,RESC,N)
  call sub(A,B,C,N)
  call check(A,C,RESA,RESC,N)
end program main
#endif
