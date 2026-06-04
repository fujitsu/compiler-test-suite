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

subroutine target(dest1, dest2, src1, src2, src3, src4, src5, src6, &
           src7, src8,  src9, src10, src11, src12, src13, src14,    &
           src15, src16, src17, src18)  
  real(kind=8),dimension(1:N)::dest1, dest2, src1, src2, src3, src4,&
           src5, src6, src7, src8, src9, src10, src11, src12, src13,&
           src14, src15, src16, src17, src18
  integer::i
  do i=1,N
     dest1(i) = src1(i) + src2(i) + src3(i) + src4(i) + src5(i)     &
                + src6(i) + src7(i) + src8(i) + src9(i) + src10(i)
     dest2(i) = src11(i) + src12(i) + src13(i) + src14(i) +         &
                src15(i) + src16(i) + src17(i) + src18(i)
  end do
end subroutine target

subroutine master(dest1, dest2, src1, src2, src3, src4, src5, src6, &
           src7, src8,  src9, src10, src11, src12, src13, src14,    &
           src15, src16, src17, src18)  
  real(kind=8),dimension(1:N)::dest1, dest2, src1, src2, src3, src4,&
           src5, src6, src7, src8, src9, src10, src11, src12, src13,&
           src14, src15, src16, src17, src18
  integer::i
!ocl loop_nofission
  do i=1,N
     dest1(i) = src1(i) + src2(i) + src3(i) + src4(i) + src5(i)     &
                + src6(i) + src7(i) + src8(i) + src9(i) + src10(i)
  end do
  do i=1,N
     dest2(i) = src11(i) + src12(i) + src13(i) + src14(i) +         &
                src15(i) + src16(i) + src17(i) + src18(i)
  end do
end subroutine master

subroutine init(src1, src2, src3, src4, src5, src6,                 &
           src7, src8,  src9, src10, src11, src12, src13, src14,    &
           src15, src16, src17, src18)  
  real(kind=8),dimension(1:N)::src1, src2, src3, src4,              &
           src5, src6, src7, src8, src9, src10, src11, src12, src13,&
           src14, src15, src16, src17, src18
  integer::i
!ocl loop_nofission
  do i=1,N
    src1(i) = sin(i*1.0+1)
    src2(i) = cos(i*0.5+2)
    src3(i) = sin(i*1.0+3)
    src4(i) = cos(i*0.5+4)
    src5(i) = sin(i*1.0+5)
    src6(i) = cos(i*0.5+6)
    src7(i) = sin(i*1.0+7)
    src8(i) = cos(i*0.5+8)
    src9(i) = sin(i*1.0+9)
    src10(i) = cos(i*0.5+1)
    src11(i) = sin(i*1.0+2)
    src12(i) = cos(i*0.5+3)
    src13(i) = sin(i*1.0+4)
    src14(i) = cos(i*0.5+5)
    src15(i) = sin(i*1.0+6)
    src16(i) = cos(i*0.5+7)
    src17(i) = sin(i*1.0+8)
    src18(i) = cos(i*0.5+9)
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
  real(kind=8),dimension(1:N)::dest1, dest2, src1, src2, src3, src4,&
           src5, src6, src7, src8, src9, src10, src11, src12, src13,&
           src14, src15, src16, src17, src18
  real(kind=8),dimension(1:N)::dest1_res, dest2_res, src1_res,      &
           src2_res, src3_res, src4_res, src5_res, src6_res,        &
           src7_res, src8_res, src9_res, src10_res, src11_res,      &
           src12_res, src13_res, src14_res, src15_res, src16_res,   &
           src17_res, src18_res

  call init(src1, src2, src3, src4,                                 &
           src5, src6, src7, src8, src9, src10, src11, src12, src13,&
           src14, src15, src16, src17, src18)
  call target(dest1, dest2, src1, src2, src3, src4,                 &
           src5, src6, src7, src8, src9, src10, src11, src12, src13,&
           src14, src15, src16, src17, src18)

  call init(src1_res, src2_res, src3_res, src4_res, src5_res,       &
           src6_res, src7_res, src8_res, src9_res, src10_res,       &
           src11_res, src12_res, src13_res, src14_res, src15_res,   &
           src16_res, src17_res, src18_res)
  call master(dest1_res, dest2_res, src1_res, src2_res, src3_res,   &
           src4_res,  src5_res, src6_res, src7_res, src8_res,       &
           src9_res,  src10_res, src11_res, src12_res, src13_res,   &
           src14_res, src15_res, src16_res, src17_res, src18_res)
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
