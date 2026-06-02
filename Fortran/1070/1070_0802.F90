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
subroutine sub(A,B,N)
  integer::I,J,N
  complex(kind=8)::A(N),B(N)
  J=0
  DO I=1, N
     IF(imag(B(I)) .GT. 0.D0)THEN
        J    = J + 1
        A(J) = B(I)
     ENDIF
  enddo
end subroutine sub

#ifndef ASM_ONLY

subroutine init(A,B,C,N)
  integer::I,J,N
  complex(kind=8)::A(N),B(N),C(N)
!ocl nosimd  
  DO I=1,N
     A(I) = cmplx(-1, 1)
     B(I) = cmplx(sin(I*8.3),cos(I*0.3))
     C(I) = cmplx(-1, 1)
  enddo

  J=0
!ocl nosimd  
  DO I=1,N
     IF(imag(B(I)) .GT. 0.D0)THEN
        J    = J + 1
        C(J) = B(I)
     ENDIF
  enddo
end subroutine init

subroutine check(A,C,N)
  USE_SIMFUNC
  integer::I,N
  complex(kind=8)::A(N),C(N)
!ocl nosimd  
  do i=1,N
     if(A(i).ne.C(i)) then
#if defined(SIM_RUN)        
        call simprint("i:")
        call simprint(i)
        call simprint(" A(i):")
        call simprint(A(i))
        call simprint(" C(i):")
        call simprintl(C(i))
#else
        print *,i,A(i),C(i)
#endif        
        PRINT_NG
     end if
  end do
  PRINT_OK
end subroutine check
  
program main
  integer::N
  complex(kind=8)::A(M),B(M),C(M)
  N = M
  call init(A,B,C,N)
  call sub(A,B,N)
  call check(A,C,N)
end program main
#endif
