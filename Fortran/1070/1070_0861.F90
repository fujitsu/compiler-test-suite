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

! compress tsvc s341
subroutine sub(A,B,D,N)
  integer::I,N
  real(kind=4)::A(N),B(N),D(N)

  DO I=1, N
!ocl simd_listv
     IF(B(I) .GT. 0.D0)THEN
        A(I) = B(I) + D(I)*1.1
     ENDIF
  enddo
end subroutine sub

#ifndef ASM_ONLY

subroutine init(A,B,C,D,N)
  integer::I,N
  real(kind=4)::A(N),B(N),C(N),D(N)
!ocl nosimd  
  DO I=1,N
     A(I) = -1
     if(MOD(i,4).gt.2) then
        B(I) = cos(i*2.2)
     else
        B(I) = -sin(i*1.1)
     end if
     C(I) = A(I)
     D(I) = sin(2*cos(i*1.1))
  enddo

!ocl nosimd  
  DO I=1,N
     IF(B(I) .GT. 0.D0)THEN
        C(I) = B(I) + D(I) * 1.1
     ENDIF
  enddo
end subroutine init

subroutine check(A,C,N)
  USE_SIMFUNC
  integer::I,N
  real(kind=4)::A(N),C(N)
  real(kind=4)::gosa/0.000001/
!ocl nosimd  
  do i=1,N
     if(abs(A(i)-C(i)).gt.gosa) then
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
  real(kind=4)::A(M),B(M),C(M),D(M)
  N = M
  call init(A,B,C,D,N)
  call sub(A,B,D,N)
  call check(A,C,N)
end program main
#endif
