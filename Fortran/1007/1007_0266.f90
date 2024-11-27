program main

call sub()
end

subroutine sub()
integer,dimension(256):: j00, j01, j02, j03, j04, j05, j06, j07, j08, j09 
integer,dimension(256):: j10, j11, j12, j13, j14, j15, j16, j17, j18, j19 
integer,dimension(256):: j20, j21, j22, j23, j24, j25, j26, j27, j28, j29 
integer,dimension(256):: j30, j31, j32, j33, j34, j35, j36, j37, j38, j39 
integer,dimension(256):: k00, k01, k02, k03, k04, k05, k06, k07, k08, k09 
integer,dimension(256):: k10, k11, k12, k13, k14, k15, k16, k17, k18, k19 
integer,dimension(256):: k20, k21, k22, k23, k24, k25, k26, k27, k28, k29 
integer,dimension(256):: k30, k31, k32, k33, k34, k35, k36, k37, k38, k39 
integer err

!$omp parallel do private(sum)
do i=1, 256
  sum = i
  j00(i) = sum
  j01(i) = j00(i)+sum
  j02(i) = j01(i)+sum
  j03(i) = j02(i)+sum
  j04(i) = j03(i)+sum
  j05(i) = j04(i)+sum
  j06(i) = j05(i)+sum
  j07(i) = j06(i)+sum
  j08(i) = j07(i)+sum
  j09(i) = j08(i)+sum
  j10(i) = j09(i)+sum
  j11(i) = j10(i)+sum
  j12(i) = j11(i)+sum
  j13(i) = j12(i)+sum
  j14(i) = j13(i)+sum
  j15(i) = j14(i)+sum
  j16(i) = j15(i)+sum
  j17(i) = j16(i)+sum
  j18(i) = j17(i)+sum
  j19(i) = j18(i)+sum
  j20(i) = j19(i)+sum
  j21(i) = j20(i)+sum
  j22(i) = j21(i)+sum
  j23(i) = j22(i)+sum
  j24(i) = j23(i)+sum
  j25(i) = j24(i)+sum
  j26(i) = j25(i)+sum
  j27(i) = j26(i)+sum
  j28(i) = j27(i)+sum
  j29(i) = j28(i)+sum
  j30(i) = j29(i)+sum
  j31(i) = j30(i)+sum
  j32(i) = j31(i)+sum
  j33(i) = j32(i)+sum
  j34(i) = j33(i)+sum
  j35(i) = j34(i)+sum
  j36(i) = j35(i)+sum
  j37(i) = j36(i)+sum
  j38(i) = j37(i)+sum
  j39(i) = j38(i)+sum
end do
!$omp end parallel do

do i=1, 256
  sum = i
  k00(i) = sum
  k01(i) = k00(i)+sum
  k02(i) = k01(i)+sum
  k03(i) = k02(i)+sum
  k04(i) = k03(i)+sum
  k05(i) = k04(i)+sum
  k06(i) = k05(i)+sum
  k07(i) = k06(i)+sum
  k08(i) = k07(i)+sum
  k09(i) = k08(i)+sum
  k10(i) = k09(i)+sum
  k11(i) = k10(i)+sum
  k12(i) = k11(i)+sum
  k13(i) = k12(i)+sum
  k14(i) = k13(i)+sum
  k15(i) = k14(i)+sum
  k16(i) = k15(i)+sum
  k17(i) = k16(i)+sum
  k18(i) = k17(i)+sum
  k19(i) = k18(i)+sum
  k20(i) = k19(i)+sum
  k21(i) = k20(i)+sum
  k22(i) = k21(i)+sum
  k23(i) = k22(i)+sum
  k24(i) = k23(i)+sum
  k25(i) = k24(i)+sum
  k26(i) = k25(i)+sum
  k27(i) = k26(i)+sum
  k28(i) = k27(i)+sum
  k29(i) = k28(i)+sum
  k30(i) = k29(i)+sum
  k31(i) = k30(i)+sum
  k32(i) = k31(i)+sum
  k33(i) = k32(i)+sum
  k34(i) = k33(i)+sum
  k35(i) = k34(i)+sum
  k36(i) = k35(i)+sum
  k37(i) = k36(i)+sum
  k38(i) = k37(i)+sum
  k39(i) = k38(i)+sum
end do

err = 0
do i=1, 256
  if(j00(i) .ne. k00(i)) err = err+1
  if(j01(i) .ne. k01(i)) err = err+1
  if(j02(i) .ne. k02(i)) err = err+1
  if(j03(i) .ne. k03(i)) err = err+1
  if(j04(i) .ne. k04(i)) err = err+1
  if(j05(i) .ne. k05(i)) err = err+1
  if(j06(i) .ne. k06(i)) err = err+1
  if(j07(i) .ne. k07(i)) err = err+1
  if(j08(i) .ne. k08(i)) err = err+1
  if(j09(i) .ne. k09(i)) err = err+1
  if(j10(i) .ne. k10(i)) err = err+1
  if(j11(i) .ne. k11(i)) err = err+1
  if(j12(i) .ne. k12(i)) err = err+1
  if(j13(i) .ne. k13(i)) err = err+1
  if(j14(i) .ne. k14(i)) err = err+1
  if(j15(i) .ne. k15(i)) err = err+1
  if(j16(i) .ne. k16(i)) err = err+1
  if(j17(i) .ne. k17(i)) err = err+1
  if(j18(i) .ne. k18(i)) err = err+1
  if(j19(i) .ne. k19(i)) err = err+1
  if(j20(i) .ne. k20(i)) err = err+1
  if(j21(i) .ne. k21(i)) err = err+1
  if(j22(i) .ne. k22(i)) err = err+1
  if(j23(i) .ne. k23(i)) err = err+1
  if(j24(i) .ne. k24(i)) err = err+1
  if(j25(i) .ne. k25(i)) err = err+1
  if(j26(i) .ne. k26(i)) err = err+1
  if(j27(i) .ne. k27(i)) err = err+1
  if(j28(i) .ne. k28(i)) err = err+1
  if(j29(i) .ne. k29(i)) err = err+1
  if(j30(i) .ne. k30(i)) err = err+1
  if(j31(i) .ne. k31(i)) err = err+1
  if(j32(i) .ne. k32(i)) err = err+1
  if(j33(i) .ne. k33(i)) err = err+1
  if(j34(i) .ne. k34(i)) err = err+1
  if(j35(i) .ne. k35(i)) err = err+1
  if(j36(i) .ne. k36(i)) err = err+1
  if(j37(i) .ne. k37(i)) err = err+1
  if(j38(i) .ne. k38(i)) err = err+1
  if(j39(i) .ne. k39(i)) err = err+1
end do

if(err .ne. 0) then
  print *, 'NG'
else
  print *, 'pass'
endif

end

