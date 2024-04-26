subroutine sub0(a,b,c,n)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c
do i=1,n
  a(c(i)) = a(c(i)) + b(i)
enddo
end subroutine

subroutine sub1(a,b,c,n)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c
do i=1,n,2
  a(c(i)) = a(c(i)) + b(i)
enddo
end subroutine

subroutine sub2(a,b,c,n,k)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c
do i=1,n,k
  a(c(i)) = a(c(i)) + b(i)
enddo
end subroutine

subroutine sub3(a,b,c,n)
real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c
do i=1,n-10
  a(c(i)) = a(i) + b(c(i+1))
enddo
end subroutine

program main
integer,parameter :: n=100
integer,parameter :: ians_sub0=300
integer,parameter :: ians_sub1=400
integer,parameter :: ians_sub2=468
integer,parameter :: ians_sub3=648

real(8),dimension(1:n) :: a,b
integer,dimension(1:n) :: c

a = 1.
b = 2.
c = (/(i,i=1,n)/)

call sub0(a,b,c,n)
if (int(sum(a)) .ne. ians_sub0) then
  print *,"ng:sub0", " result =", int(sum(a)),"master =", ians_sub0
  goto 100
endif

call sub1(a,b,c,n)
if (int(sum(a)) .ne. ians_sub1) then
  print *,"ng:sub1", " result =", int(sum(a)),"master =", ians_sub1
  goto 100
endif

call sub2(a,b,c,n,3)
if (int(sum(a)) .ne. ians_sub2) then
  print *,"ng:sub2", " result =", int(sum(a)),"master =", ians_sub2
  goto 100
endif

call sub3(a,b,c,n)
if (int(sum(a)) .ne. ians_sub3) then
  print *,"ng:sub3", " result =", int(sum(a)),"master =", ians_sub3
  goto 100
endif

print *,"ok"

100 continue

end program
