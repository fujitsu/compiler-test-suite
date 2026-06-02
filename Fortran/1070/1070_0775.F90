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

#define N M
#define ERR_S 1E-6
#define IS_EQUAL(a,b) ((a==b).or.(a==0.and.abs(b)<ERR_S).or.(a/=0.and.abs(a-b)/abs(a)<ERR_S))

! compress :tsvc s341
subroutine sub(A,B,D)
  integer::I,J
  real(kind=4)::A(N),B(N),D(N)
  J=0
  DO I=1, N
     IF(B(I) .GT. 0.D0)THEN
        J    = J + 1
        A(J) = B(I) * D(I) + D(J)
     ENDIF
  enddo
  J=0
!ocl loop_nofusion
  DO I=1, N
     IF(D(I) .GT. 0.D0)THEN
        J    = J + 1
        A(I) = B(J) * D(I) + B(J)
     ENDIF
  enddo
end subroutine sub

#ifndef ASM_ONLY

subroutine init(A,B,C,D)
  integer::I,J
  real(kind=4)::A(N),B(N),C(N),D(N)
!ocl nosimd  
  DO I=1,N
     A(I) = -1
     B(I) = sin(I*2.3)
     D(I) = cos(-I*0.1)
     C(I) = -1
  enddo

  J=0
!ocl nosimd  
  DO I=1, N
     IF(B(I) .GT. 0.D0)THEN
        J    = J + 1
        C(J) = B(I) * D(I) + D(J)
     ENDIF
  enddo
  J=0
!ocl loop_nofusion
!ocl nosimd
  DO I=1, N
     IF(D(I) .GT. 0.D0)THEN
        J    = J + 1
        C(I) = B(J) * D(I) + B(J)
     ENDIF
  enddo
end subroutine init

subroutine check(A,C)
  USE_SIMFUNC
  integer::I
  real(kind=4)::A(N),C(N)
  real(kind=4),parameter::err=1E-7
!ocl nosimd
  do i=1,N
     if (.not.IS_EQUAL(A(i),C(i))) then
#if defined(SIM_RUN)        
        call simprint("i:")
        call simprint(i)
        call simprint(" A(i):")
        call simprint(A(i))
        call simprint(" C(i):")
        call simprint(C(i))
#else
        print *,i,A(i),C(i)
#endif        
        PRINT_NG
     end if
  end do
  PRINT_OK
end subroutine check
  
program main
  real(kind=4)::A(M),B(M),C(M),D(M)
  call init(A,B,C,D)
  call sub(A,B,D)
  call check(A,C)
end program main
#endif
