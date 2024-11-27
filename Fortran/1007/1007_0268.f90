program main

call sub()
end

subroutine sub()
integer*8,dimension(256):: j00, j01, j02, j03, j04, j05, j06, j07, j08, j09 
integer*8,dimension(256):: j10, j11, j12, j13, j14, j15, j16, j17, j18, j19 
integer*8,dimension(256):: j20, j21, j22, j23, j24, j25, j26, j27, j28, j29 
integer*8,dimension(256):: j30, j31, j32, j33, j34, j35, j36, j37, j38, j39 
integer*8,dimension(256):: k00, k01, k02, k03, k04, k05, k06, k07, k08, k09 
integer*8,dimension(256):: k10, k11, k12, k13, k14, k15, k16, k17, k18, k19 
integer*8,dimension(256):: k20, k21, k22, k23, k24, k25, k26, k27, k28, k29 
integer*8,dimension(256):: k30, k31, k32, k33, k34, k35, k36, k37, k38, k39 
integer sum
integer err

!$omp parallel do private(sum)
do i=1, 256
  sum = i
  call sub2(i, sum, &
            j00, j01, j02, j03, j04, j05, j06, j07, &
            j08, j09, j10, j11, j12, j13, j14, j15, &
            j16, j17, j18, j19, j20, j21, j22, j23, &
            j24, j25, j26, j27, j28, j29, j30, j31, &
            j32, j33, j34, j35, j36, j37, j38, j39)
end do
!$omp end parallel do

do i=1, 256
  sum = i
  call sub2(i, sum, &
            k00, k01, k02, k03, k04, k05, k06, k07, &
            k08, k09, k10, k11, k12, k13, k14, k15, &
            k16, k17, k18, k19, k20, k21, k22, k23, &
            k24, k25, k26, k27, k28, k29, k30, k31, &
            k32, k33, k34, k35, k36, k37, k38, k39)
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

subroutine sub2(i, sum, &
                n00, n01, n02, n03, n04, n05, n06, n07, n08, n09, &
                n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, & 
                n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, & 
                n30, n31, n32, n33, n34, n35, n36, n37, n38, n39)
integer i, sum
integer*8,dimension(256):: n00, n01, n02, n03, n04, n05, n06, n07, n08, n09 
integer*8,dimension(256):: n10, n11, n12, n13, n14, n15, n16, n17, n18, n19 
integer*8,dimension(256):: n20, n21, n22, n23, n24, n25, n26, n27, n28, n29 
integer*8,dimension(256):: n30, n31, n32, n33, n34, n35, n36, n37, n38, n39 

  n00(i) = sum
  n01(i) = n00(i)+sum
  n02(i) = n01(i)+sum
  n03(i) = n02(i)+sum
  n04(i) = n03(i)+sum
  n05(i) = n04(i)+sum
  n06(i) = n05(i)+sum
  n07(i) = n06(i)+sum
  n08(i) = n07(i)+sum
  n09(i) = n08(i)+sum
  n10(i) = n09(i)+sum
  n11(i) = n10(i)+sum
  n12(i) = n11(i)+sum
  n13(i) = n12(i)+sum
  n14(i) = n13(i)+sum
  n15(i) = n14(i)+sum
  n16(i) = n15(i)+sum
  n17(i) = n16(i)+sum
  n18(i) = n17(i)+sum
  n19(i) = n18(i)+sum
  n20(i) = n19(i)+sum
  n21(i) = n20(i)+sum
  n22(i) = n21(i)+sum
  n23(i) = n22(i)+sum
  n24(i) = n23(i)+sum
  n25(i) = n24(i)+sum
  n26(i) = n25(i)+sum
  n27(i) = n26(i)+sum
  n28(i) = n27(i)+sum
  n29(i) = n28(i)+sum
  n30(i) = n29(i)+sum
  n31(i) = n30(i)+sum
  n32(i) = n31(i)+sum
  n33(i) = n32(i)+sum
  n34(i) = n33(i)+sum
  n35(i) = n34(i)+sum
  n36(i) = n35(i)+sum
  n37(i) = n36(i)+sum
  n38(i) = n37(i)+sum
  n39(i) = n38(i)+sum
end

