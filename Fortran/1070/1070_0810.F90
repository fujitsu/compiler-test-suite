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

! compress :tsvc s342
subroutine sub(A,B,C,N)
  integer::I,J,N
  integer(kind=4)::A(N),B(N)
  integer(kind=8)::C(N)
  J=0
  DO I=1, N
     IF(B(I) .GT. C(i))THEN
        J    = J + 1
        A(I) = C(J)
     ENDIF
  enddo
end subroutine sub

#ifndef ASM_ONLY

subroutine init(A,B,C,RES,N)
  integer::I,J,N
  integer(kind=4)::A(N),B(N),RES(N)
  integer(kind=8)::C(N)

!ocl nosimd  
  DO I=1,N
     A(I) = -1
     B(I) = MOD(I*7,100)-50
     C(I) = -MOD(I*13,128)+50
     RES(I) = A(I)
  enddo

  J=0
!ocl nosimd  
  DO I=1,N
     IF(B(I) .GT. C(I))THEN
        J      = J + 1
        RES(I) = C(J)
     ENDIF
  enddo
end subroutine init

subroutine check(A,RES,N)
  USE_SIMFUNC
  integer::I,N
  integer(kind=4)::A(N),RES(N)
!ocl nosimd  
  do i=1,N
     if(A(i).ne.RES(i)) then
#if defined(SIM_RUN)        
        call simprint("i:")
        call simprint(i)
        call simprint(" A(i):")
        call simprint(A(i))
        call simprint(" RES(i):")
        call simprintl(RES(i))
#else
        print *,i,A(i),RES(i)
#endif        
        PRINT_NG
     end if
  end do
  PRINT_OK
end subroutine check
  
program main
  integer::N
  integer(kind=4)::A(M),B(M),RES(M)
  integer(kind=8)::C(M)
  N = M
  call init(A,B,C,RES,N)
  call sub(A,B,C,N)
  call check(A,RES,N)
end program main
#endif
