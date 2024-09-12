subroutine sub00(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,n)
real(8),dimension(1:n) :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10

do j=1,n
  do i=1,n
    a01(i) = a02(i) + a03(i) + a04(i) + a05(i) + a06(i) + a07(i) + a08(i) + a09(i) + a10(i)
  enddo
enddo
end subroutine

subroutine sub01(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,n)
real(8),dimension(1:n) :: a01,a02,a03,a04,a05,a06,a07,a08,a09
real(8),dimension(1:n,1:n) :: a10

do j=1,n
  do i=1,n
    a01(i) = a02(i) + a03(i) + a04(i) + a05(i) + a06(i) + a07(i) + a08(i) + a09(i) + a10(i,j)
  enddo
enddo
end subroutine

subroutine sub02(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,n)
real(8),dimension(1:n) :: a01,a02,a03,a04,a05
real(8),dimension(1:n,1:n) :: a06,a07,a08,a09,a10

do j=1,n
  do i=1,n
    a01(i) = a02(i) + a03(i) + a04(i) + a05(i) + a06(i,j) + a07(i,j) + a08(i,j) + a09(i,j) + a10(i,j)
  enddo
enddo
end subroutine

subroutine sub03(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,n)
real(8),dimension(1:n) :: a10
real(8),dimension(1:n,1:n) :: a01,a02,a03,a04,a05,a06,a07,a08,a09

do j=1,n
  do i=1,n
    a01(i,j) = a02(i,j) + a03(i,j) + a04(i,j) + a05(i,j) + a06(i,j) + a07(i,j) + a08(i,j) + a09(i,j) + a10(i)
  enddo
enddo
end subroutine

subroutine sub04(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,n)
real(8),dimension(1:n,1:n) :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10

do j=1,n
  do i=1,n
    a01(i,j) = a02(i,j) + a03(i,j) + a04(i,j) + a05(i,j) + a06(i,j) + a07(i,j) + a08(i,j) + a09(i,j) + a10(i,j)
  enddo
enddo
end subroutine

subroutine sub05(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,n)
real(8),dimension(1:n) :: a01,a02,a03,a04,a05,a06,a07,a08
real(8),dimension(1:n,1:n) :: a09,a10

do j=1,n
  do i=1,n
    a01(i) = a02(i) + a03(i) + a04(i) + a05(i) + a06(i) + a07(i) + a08(i) + a09(i,j) + a10(i,j)
  enddo
enddo
end subroutine

program main
integer,parameter :: ians00=900
integer,parameter :: ians01=900
integer,parameter :: ians02=900
integer,parameter :: ians03=90000
integer,parameter :: ians04=90000
integer,parameter :: ians05=900
integer,parameter :: n=100
real(8),dimension(1:n) :: a01_s00,a02_s00,a03_s00,a04_s00,a05_s00,a06_s00,a07_s00,a08_s00,a09_s00,a10_s00
real(8),dimension(1:n) :: a01_s01,a02_s01,a03_s01,a04_s01,a05_s01,a06_s01,a07_s01,a08_s01,a09_s01
real(8),dimension(1:n,1:n) :: a10_s01
real(8),dimension(1:n) :: a01_s02,a02_s02,a03_s02,a04_s02,a05_s02
real(8),dimension(1:n,1:n) :: a06_s02,a07_s02,a08_s02,a09_s02,a10_s02
real(8),dimension(1:n) :: a10_s03
real(8),dimension(1:n,1:n) :: a01_s03,a02_s03,a03_s03,a04_s03,a05_s03,a06_s03,a07_s03,a08_s03,a09_s03
real(8),dimension(1:n,1:n) :: a01_s04,a02_s04,a03_s04,a04_s04,a05_s04,a06_s04,a07_s04,a08_s04,a09_s04,a10_s04
real(8),dimension(1:n) :: a01_s05,a02_s05,a03_s05,a04_s05,a05_s05,a06_s05,a07_s05,a08_s05
real(8),dimension(1:n,1:n) :: a09_s05,a10_s05

a01_s00 = 0.
a02_s00 = 1.
a03_s00 = 1.
a04_s00 = 1.
a05_s00 = 1.
a06_s00 = 1.
a07_s00 = 1.
a08_s00 = 1.
a09_s00 = 1.
a10_s00 = 1.
a01_s01 = 0.
a02_s01 = 1.
a03_s01 = 1.
a04_s01 = 1.
a05_s01 = 1.
a06_s01 = 1.
a07_s01 = 1.
a08_s01 = 1.
a09_s01 = 1.
a10_s01 = 1.
a01_s02 = 0.
a02_s02 = 1.
a03_s02 = 1.
a04_s02 = 1.
a05_s02 = 1.
a06_s02 = 1.
a07_s02 = 1.
a08_s02 = 1.
a09_s02 = 1.
a10_s02 = 1.
a01_s03 = 0.
a02_s03 = 1.
a03_s03 = 1.
a04_s03 = 1.
a05_s03 = 1.
a06_s03 = 1.
a07_s03 = 1.
a08_s03 = 1.
a09_s03 = 1.
a10_s03 = 1.
a01_s04 = 0.
a02_s04 = 1.
a03_s04 = 1.
a04_s04 = 1.
a05_s04 = 1.
a06_s04 = 1.
a07_s04 = 1.
a08_s04 = 1.
a09_s04 = 1.
a10_s04 = 1.
a01_s05 = 0.
a02_s05 = 1.
a03_s05 = 1.
a04_s05 = 1.
a05_s05 = 1.
a06_s05 = 1.
a07_s05 = 1.
a08_s05 = 1.
a09_s05 = 1.
a10_s05 = 1.

call sub00(a01_s00,a02_s00,a03_s00,a04_s00,a05_s00,a06_s00,a07_s00,a08_s00,a09_s00,a10_s00,n)
call sub01(a01_s01,a02_s01,a03_s01,a04_s01,a05_s01,a06_s01,a07_s01,a08_s01,a09_s01,a10_s01,n)
call sub02(a01_s02,a02_s02,a03_s02,a04_s02,a05_s02,a06_s02,a07_s02,a08_s02,a09_s02,a10_s02,n)
call sub03(a01_s03,a02_s03,a03_s03,a04_s03,a05_s03,a06_s03,a07_s03,a08_s03,a09_s03,a10_s03,n)
call sub04(a01_s04,a02_s04,a03_s04,a04_s04,a05_s04,a06_s04,a07_s04,a08_s04,a09_s04,a10_s04,n)
call sub05(a01_s05,a02_s05,a03_s05,a04_s05,a05_s05,a06_s05,a07_s05,a08_s05,a09_s05,a10_s05,n)

ng_flg = 0
if (int(sum(a01_s00)) .ne. ians00) then
  print *,"ng_sub00", int(sum(a01_s00)), ians00
  ng_flg = 1
endif
if (int(sum(a01_s01)) .ne. ians01) then
  print *,"ng_sub01", int(sum(a01_s01)), ians01
  ng_flg = 1
endif
if (int(sum(a01_s02)) .ne. ians02) then
  print *,"ng_sub02", int(sum(a01_s02)), ians02
  ng_flg = 1
endif
if (int(sum(a01_s03)) .ne. ians03) then
  print *,"ng_sub03", int(sum(a01_s03)), ians03
  ng_flg = 1
endif
if (int(sum(a01_s04)) .ne. ians04) then
  print *,"ng_sub04", int(sum(a01_s04)), ians04
  ng_flg = 1
endif
if (int(sum(a01_s05)) .ne. ians05) then
  print *,"ng_sub05", int(sum(a01_s05)), ians05
  ng_flg = 1
endif
if (ng_flg .eq. 0) then
  print *,"ok"
endif
end program
