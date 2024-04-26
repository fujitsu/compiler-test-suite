subroutine sub01(a,b,n)
integer(1),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine sub02(a,b,n)
integer(2),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine sub03(a,b,n)
integer(4),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine sub04(a,b,n)
integer(8),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine sub05(a,b,n)
real(4),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine sub06(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine sub07(a,b,n)
real(16),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine sub08(a,b,n)
complex(4),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine sub09(a,b,n)
complex(8),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

subroutine sub10(a,b,n)
complex(16),dimension(1:n) :: a,b
do i=1,n
  a(i) = a(i) + b(i)
enddo
end subroutine

program main
integer,parameter :: n01=10
integer,parameter :: ians01=30
integer,parameter :: n02=1000
integer,parameter :: ians02=3000
integer,parameter :: n03=1000
integer,parameter :: ians03=3000
integer,parameter :: n04=1000
integer,parameter :: ians04=3000
integer,parameter :: n05=1000
integer,parameter :: ians05=3000
integer,parameter :: n06=1000
integer,parameter :: ians06=3000
integer,parameter :: n07=1000
integer,parameter :: ians07=3000
integer,parameter :: n08=1000
integer,parameter :: ians08=3000
integer,parameter :: n09=1000
integer,parameter :: ians09=3000
integer,parameter :: n10=1000
integer,parameter :: ians10=3000

integer(1),dimension(1:n01) :: a01,b01
integer(2),dimension(1:n02) :: a02,b02
integer(4),dimension(1:n03) :: a03,b03
integer(8),dimension(1:n04) :: a04,b04
real(4),dimension(1:n05) :: a05,b05
real(8),dimension(1:n06) :: a06,b06
real(16),dimension(1:n07) :: a07,b07
complex(4),dimension(1:n08) :: a08,b08
complex(8),dimension(1:n09) :: a09,b09
complex(16),dimension(1:n10) :: a10,b10

integer :: ng_flg,result01,result02,result03,result04
integer :: result05,result06,result07,result08,result09,result10

a01 = 1
b01 = 2
a02 = 1
b02 = 2
a03 = 1
b03 = 2
a04 = 1
b04 = 2
a05 = 1.
b05 = 2.
a06 = 1.
b06 = 2.
a07 = 1.
b07 = 2.
a08 = (1.,0.)
b08 = (2.,0.)
a09 = (1.,0.)
b09 = (2.,0.)
a10 = (1.,0.)
b10 = (2.,0.)

call sub01(a01,b01,n01)
call sub02(a02,b02,n02)
call sub03(a03,b03,n03)
call sub04(a04,b04,n04)
call sub05(a05,b05,n05)
call sub06(a06,b06,n06)
call sub07(a07,b07,n07)
call sub08(a08,b08,n08)
call sub09(a09,b09,n09)
call sub10(a10,b10,n10)

ng_flg = 0

result01 = int(sum(a01))
result02 = int(sum(a02))
result03 = int(sum(a03))
result04 = int(sum(a04))
result05 = int(sum(a05))
result06 = int(sum(a06))
result07 = int(sum(a07))
result08 = int(sum(a08))
result09 = int(sum(a09))
result10 = int(sum(a10))

if (result01 .ne. ians01) then
  print *,"ng:sub01", " result =", result01,"master =", ians01
  ng_flg = 1
endif

if (result02 .ne. ians02) then
  print *,"ng:sub02", " result =", result02,"master =", ians02
  ng_flg = 1
endif

if (result03 .ne. ians03) then
  print *,"ng:sub03", " result =", result03,"master =", ians03
  ng_flg = 1
endif

if (result04 .ne. ians04) then
  print *,"ng:sub04", " result =", result04,"master =", ians04
  ng_flg = 1
endif

if (result05 .ne. ians05) then
  print *,"ng:sub05", " result =", result05,"master =", ians05
  ng_flg = 1
endif

if (result06 .ne. ians06) then
  print *,"ng:sub06", " result =", result06,"master =", ians06
  ng_flg = 1
endif

if (result07 .ne. ians07) then
  print *,"ng:sub07", " result =", result07,"master =", ians07
  ng_flg = 1
endif

if (result08 .ne. ians08) then
  print *,"ng:sub08", " result =", result08,"master =", ians08
  ng_flg = 1
endif

if (result09 .ne. ians09) then
  print *,"ng:sub09", " result =", result09,"master =", ians09
  ng_flg = 1
endif

if (result10 .ne. ians10) then
  print *,"ng:sub10", " result =", result10,"master =", ians10
  ng_flg = 1
endif

if (ng_flg .eq. 0) then
  print *,"ok"
endif

end program
