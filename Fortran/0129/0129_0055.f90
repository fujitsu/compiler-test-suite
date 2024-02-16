subroutine sub(a,n)
real(8),dimension(1:n+3) :: a

do i=1,n,3
  call test1(a,i);
  call test2(a,i);
  call test3(a,i);
enddo
end subroutine

subroutine test1(a,i)
real(8),dimension(1:203) :: a
integer i;
  a(i) = 1.
end subroutine test1

subroutine test2(a,i)
real(8),dimension(1:203) :: a
integer i;
  a(i+2) = 2.
end subroutine test2

subroutine test3(a,i)
real(8),dimension(1:203) :: a
integer i;
  a(i+2) = 3.
end subroutine test3

program main
integer,parameter :: ians=337
integer,parameter :: n=200
real(8),dimension(1:n+3) :: a
data a/203*0/

a = 1.
call sub(a,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
