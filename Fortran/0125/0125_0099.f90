subroutine sub01(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n-10,50
  a(i) = a(i) + b(i) + b(i+10)
enddo
end subroutine

subroutine sub02(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n-20,50
  a(i) = a(i) + b(i) + b(i+20)
enddo
end subroutine

subroutine sub03(a,b,n)
real(8),dimension(1:n) :: a,b
do i=1,n-40,50
  a(i) = a(i) + b(i) + b(i+40)
enddo
end subroutine

program main
integer,parameter :: n=1000
integer,parameter :: ians01=1080
integer,parameter :: ians02=1080
integer,parameter :: ians03=1080

real(8),dimension(1:n) :: a01,b01
real(8),dimension(1:n) :: a02,b02
real(8),dimension(1:n) :: a03,b03

integer :: ng_flg,result01,result02,result03

a01 = 1.
b01 = 2.
a02 = 1.
b02 = 2.
a03 = 1.
b03 = 2.

call sub01(a01,b01,n)
call sub02(a02,b02,n)
call sub03(a03,b03,n)

result01 = int(sum(a01))
result02 = int(sum(a02))
result03 = int(sum(a03))
ng_flg = 0
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

if (ng_flg .eq. 0) then
  print *,"ok"
endif

end program
