subroutine sub01(a,b,c,n,k)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c
do i=1,n-17,k
  a(c(i)) = a(c(i)) + b(c(i)) + b(c(i+17))
enddo
end subroutine

subroutine sub02(a,b,c,n,k)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c
do i=1,n-33,k
  a(c(i)) = a(c(i)) + b(c(i)) + b(c(i+33))
enddo
end subroutine

subroutine sub03(a,b,c,n,k)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c
do i=1,n-65,k
  a(c(i)) = a(c(i)) + b(c(i)) + b(c(i+65))
enddo
end subroutine

program main
integer,parameter :: n=1000
integer,parameter :: ians01=1132
integer,parameter :: ians02=1132
integer,parameter :: ians03=1128
integer,parameter :: k=30

real(8),dimension(1:n) :: a01,b01
real(8),dimension(1:n) :: a02,b02
real(8),dimension(1:n) :: a03,b03
integer,dimension(1:n) :: c

integer :: ng_flg,result01,result02,result03

a01 = 1.
b01 = 2.
a02 = 1.
b02 = 2.
a03 = 1.
b03 = 2.
c = (/(i,i=n,1,-1)/)

call sub01(a01,b01,c,n,k)
call sub02(a02,b02,c,n,k)
call sub03(a03,b03,c,n,k)

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
