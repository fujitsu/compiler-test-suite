#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT_NG call simprintl("NG")
#define PRINT_OK call simprintl("OK")
#else
#define USE_SIMFUNC
#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"
#endif

#define N 32
#define M 32

subroutine target(dest1, src1, src2)
  real(kind=8),dimension(1:N,1:M)::dest1, src1, src2
  integer::i,j
  do i=1,N
     do j=1,M
        dest1(i,j) = src1(i,j) + src2(j,i)
     end do
  end do
end subroutine target

subroutine master(dest1, src1, src2)
  real(kind=8),dimension(1:N,1:M)::dest1, src1, src2
  integer::i
!ocl loop_nointerchange
  do j=1,M
     do i=1,N
        dest1(i,j) = src1(i,j) + src2(j,i)
     end do
  end do
end subroutine master


subroutine init(src1, src2)
  real(kind=8),dimension(1:N,1:M)::src1, src2
  integer::i
!ocl loop_nofission
  do i=1,N
     do j=1,M
        src1(i,j) = sin(i*1.0 + j)
        src2(i,j) = cos(i*0.5 + i)
     end do
  end do
end subroutine init

subroutine check(dest1, dest1_res) 
  USE_SIMFUNC
  real(kind=8),dimension(1:N,1:M)::dest1, dest1_res
  integer::i
  interface
     logical function equal_d(a,b)
       real(kind=8)::a,b
     end function equal_d
  end interface
!ocl loop_nofission
  do i=1,N
    do j=1,N
      if ( equal_d(dest1(i,j), dest1_res(i,j)) .neqv. .true.)then
      PRINT_NG
 	return 
      endif
    end do
  end do
  PRINT_OK
end subroutine check

!!! main
program main
  USE_SIMFUNC
  real(kind=8),dimension(1:N,1:M)::dest1, src1, src2
  real(kind=8),dimension(1:N,1:M)::dest1_res, src1_res, src2_res
  call init(src1, src2);
  call target(dest1, src1, src2);
  call init(src1_res, src2_res);
  call master(dest1_res,src1_res, src2_res);
  call check(dest1, dest1_res);
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
