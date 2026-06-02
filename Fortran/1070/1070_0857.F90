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
subroutine sub(A,B,N)
  integer::I,N
  logical(kind=2)::A(N),B(N)

  DO I=1, N
!ocl simd_listv
     IF(B(I) .eqv. .true.)THEN
        A(I) = B(I)
     ENDIF
  enddo
end subroutine sub

#ifndef ASM_ONLY

subroutine init(A,B,C,N)
  integer::I,N
  logical(kind=2)::A(N),B(N),C(N)
!ocl nosimd  
  DO I=1,N
     A(I) = .false.
     if(MOD(i,4).gt.2) then
        B(I) = .true.
     else
        B(I) = .false.
     end if
     C(I) = A(I)
  enddo

!ocl nosimd  
  DO I=1,N
     IF(B(I) .eqv. .true.)THEN
        C(I) = B(I)
     ENDIF
  enddo
end subroutine init

subroutine check(A,C,N)
  USE_SIMFUNC
  integer::I,N
  logical(kind=2)::A(N),C(N)
!ocl nosimd  
  do i=1,N
     if(A(i).neqv.C(i)) then
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
  logical(kind=2)::A(M),B(M),C(M)
  N = M
  call init(A,B,C,N)
  call sub(A,B,N)
  call check(A,C,N)
end program main
#endif
