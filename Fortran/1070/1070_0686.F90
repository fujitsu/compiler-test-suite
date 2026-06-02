#ifdef SIM_RUN
#define USE_SIMFUNC use simfunc
#define PRINT_NG call simprintl("NG")
#define PRINT_OK call simprintl("OK")
#else
#define USE_SIMFUNC
#define PRINT_NG print *, "NG"
#define PRINT_OK print *, "OK"
#endif

program main
    USE_SIMFUNC

  integer::i1(16)/-18,-17,-16,-15,-2,-1,0,1,2,14,15,16,125,126,127,128/
  integer::i2(16)/-18,-17,-16,-15,-2,-1,0,1,2,14,15,16,125,126,127,128/
  integer::i4(16)/-18,-17,-16,-15,-2,-1,0,1,2,14,15,16,125,126,127,128/
  integer::i8(16)/-18,-17,-16,-15,-2,-1,0,1,2,14,15,16,125,126,127,128/
  logical res1(16),res2(16),res3(16),res4(16),res5(16)
  logical res6(16),res7(16),res8(16),res9(16),res10(16)
  logical res11(16),res12(16),res13(16),res14(16),res15(16)
  logical res16(16),res17(16),res18(16),res19(16),res20(16)
  data  res1/1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1/
  data  res2/1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1/
  data  res3/1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1/
  data  res4/0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0/
  data  res5/0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0/
  data  res6/0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0/
  data  res7/0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0/
  data  res8/0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0/
  data  res9/0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0/
  data res10/0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1/

  data res11/0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0/
  data res12/0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0/
  data res13/0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0/
  data res14/1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1/
  data res15/1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1/
  data res16/1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1/
  data res17/1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1/
  data res18/1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1/
  data res19/1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1/
  data res20/1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1/
  
!  call s11(ble(i1, -17_1),res1, -17)
!  call s11(ble(i1, -16_1),res2, -16)
!  call s11(ble(i1,  -1_1),res3,  -1)
  call s11(ble(i1,   0_1),res4,   0)
  call s11(ble(i1,   1_1),res5,   1)
  call s11(ble(i1,  15_1),res6,  15)
  call s11(ble(i1,  16_1),res7,  16)
  call s11(ble(i1, 126_1),res8,  126)
  call s11(ble(i1, 127_1),res9,  127)
!  call s11(ble(i1, 128_1),res10, 128)

!  call s11(ble( -17_1, i1),res11, -17)
!  call s11(ble( -16_1, i1),res12, -16)
!  call s11(ble(  -1_1, i1),res13,  -1)
  call s11(ble(   0_1, i1),res14,   0)
  call s11(ble(   1_1, i1),res15,   1)
  call s11(ble(  15_1, i1),res16,  15)
  call s11(ble(  16_1, i1),res17,  16)
  call s11(ble( 126_1, i1),res18,  126)
  call s11(ble( 127_1, i1),res19,  127)
!  call s11(ble( 128_1, i1),res20, 128)

!  call s11(ble(i2, -17_2),res1, -17)
!  call s11(ble(i2, -16_2),res2, -16)
!  call s11(ble(i2,  -1_2),res3,  -1)
  call s11(ble(i2,   0_2),res4,   0)
  call s11(ble(i2,   1_2),res5,   1)
  call s11(ble(i2,  15_2),res6,  15)
  call s11(ble(i2,  16_2),res7,  16)
  call s11(ble(i2, 126_2),res8,  126)
  call s11(ble(i2, 127_2),res9,  127)
  call s11(ble(i2, 128_2),res10, 128)

!  call s11(ble( -17_2, i2),res11, -17)
!  call s11(ble( -16_2, i2),res12, -16)
!  call s11(ble(  -1_2, i2),res13,  -1)
  call s11(ble(   0_2, i2),res14,   0)
  call s11(ble(   1_2, i2),res15,   1)
  call s11(ble(  15_2, i2),res16,  15)
  call s11(ble(  16_2, i2),res17,  16)
  call s11(ble( 126_2, i2),res18,  126)
  call s11(ble( 127_2, i2),res19,  127)
  call s11(ble( 128_2, i2),res20, 128)

  call s11(ble(i4, -17_4),res1, -17)
  call s11(ble(i4, -16_4),res2, -16)
  call s11(ble(i4,  -1_4),res3,  -1)
  call s11(ble(i4,   0_4),res4,   0)
  call s11(ble(i4,   1_4),res5,   1)
  call s11(ble(i4,  15_4),res6,  15)
  call s11(ble(i4,  16_4),res7,  16)
  call s11(ble(i4, 126_4),res8,  126)
  call s11(ble(i4, 127_4),res9,  127)
  call s11(ble(i4, 128_4),res10, 128)

  call s11(ble( -17_4, i4),res11, -17)
  call s11(ble( -16_4, i4),res12, -16)
  call s11(ble(  -1_4, i4),res13,  -1)
  call s11(ble(   0_4, i4),res14,   0)
  call s11(ble(   1_4, i4),res15,   1)
  call s11(ble(  15_4, i4),res16,  15)
  call s11(ble(  16_4, i4),res17,  16)
  call s11(ble( 126_4, i4),res18,  126)
  call s11(ble( 127_4, i4),res19,  127)
  call s11(ble( 128_4, i4),res20, 128)

!  call s11(ble(i8, -17_8),res1, -17)
!  call s11(ble(i8, -16_8),res2, -16)
!  call s11(ble(i8,  -1_8),res3,  -1)
  call s11(ble(i8,   0_8),res4,   0)
  call s11(ble(i8,   1_8),res5,   1)
  call s11(ble(i8,  15_8),res6,  15)
  call s11(ble(i8,  16_8),res7,  16)
  call s11(ble(i8, 126_8),res8,  126)
  call s11(ble(i8, 127_8),res9,  127)
  call s11(ble(i8, 128_8),res10, 128)

!  call s11(ble( -17_8, i8),res11, -17)
!  call s11(ble( -16_8, i8),res12, -16)
!  call s11(ble(  -1_8, i8),res13,  -1)
  call s11(ble(   0_8, i8),res14,   0)
  call s11(ble(   1_8, i8),res15,   1)
  call s11(ble(  15_8, i8),res16,  15)
  call s11(ble(  16_8, i8),res17,  16)
  call s11(ble( 126_8, i8),res18,  126)
  call s11(ble( 127_8, i8),res19,  127)
  call s11(ble( 128_8, i8),res20, 128)

  PRINT_OK
contains
  subroutine s11(l,res, flg)
    integer flg
    logical::l(:),res(:)
    if(any(l.neqv.res)) PRINT_NG
  end subroutine s11

end program main
