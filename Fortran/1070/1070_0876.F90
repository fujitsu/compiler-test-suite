#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT_NG call simprintl("NG")
#define PRINT_OK call simprintl("OK")
#else
#define USE_SIMFUNC
#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"
#endif

#define N 1024
subroutine target(dest1, dest2, src1, src2)
  real(kind=8),dimension(1:N)::dest1, dest2, src1, src2
  integer::i
!ocl noswp
!ocl simd
  do i=1,N
     dest1(i) = src1(i) + src2(i)
     dest2(i) = src1(i) * src2(i)
  end do
end subroutine target

subroutine master(dest1_res, dest2_res, src1_res, src2_res)
  real(kind=8),dimension(1:N)::dest1_res, dest2_res, src1_res, src2_res
  integer::i
!ocl noswp
!ocl nosimd
  do i=1,N
     dest1_res(i) = src1_res(i) + src2_res(i)
     dest2_res(i) = src1_res(i) * src2_res(i)
  end do
end subroutine master


subroutine init(src1, src2)
  real(kind=8),dimension(1:N)::src1, src2
  integer::i
!ocl loop_nofission
  do i=1,N
    src1(i) = sin(i*1.0)
    src2(i) = cos(i*0.5)
  end do
end subroutine init

subroutine check(dest1, dest2, dest1_res, dest2_res)  
  USE_SIMFUNC
  real(kind=8),dimension(1:N)::dest1, dest2, dest1_res, dest2_res
  integer::i
  interface
     logical function equal_d(a,b)
       real(kind=8)::a,b
     end function equal_d
  end interface
!ocl loop_nofission
  do i=1,N
     if ( (equal_d(dest1(i), dest1_res(i)) .and. equal_d(dest2(i), dest2_res(i))) &
          .neqv. .true.)then
        PRINT_NG
     endif
  end do
  PRINT_OK
end subroutine check

!!! main
program main
  USE_SIMFUNC
  real(kind=8),dimension(1:N)::dest1, dest2, src1, src2
  real(kind=8),dimension(1:N)::dest1_res, dest2_res, src1_res, src2_res
  call init(src1, src2);
  call target(dest1, dest2, src1, src2);
  call init(src1_res, src2_res);
  call master(dest1_res, dest2_res, src1_res, src2_res);
  call check(dest1, dest2, dest1_res, dest2_res);
end  program main

#define ERR_D (1.0E-14)
logical function equal_d(a, b)
  real(kind=8)::a,b
  if ( a.eq.b ) then
     equal_d = .true.
  else if ( a.eq.0 ) then
     if ( b .lt. ERR_D) then
        equal_d = .true.
     else
        equal_d = .false.
     end if
  else 
     if ( abs(a-b)/abs(a) .lt. ERR_D) then
        equal_d = .true.
     else
        equal_d = .false.
     end if
  end if
end function equal_d
