subroutine sub(a,b,n)
real(8),dimension(1:n+3) :: a,b
integer ::  k,j,i,l
do j = 1,n
  do k=1,n
    b(k+1) = 2.
    b(k+2) = 3.
    do i=1,n
      a(i) = 1.
      a(i+1) = 2.
      a(i+2) = 3.
    enddo
    do l=1,n,2
      a(l) = 1.
      a(l+1) = 2.
      a(l+2) = 3.
    enddo
  enddo
enddo
end subroutine

program main
integer,parameter :: ians=307
integer,parameter :: n=200
real(8),dimension(1:n+3) :: a,b
data a/203*0/, b/203*1/

a = 1.
b = 1.
call sub(a,b,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program
