subroutine sub(a,b,c,n)
real(8),dimension(1:n,1:n) :: a,b,c

  do k=1,n
    do j=1,n
      do i=1,n
        a(i,j)=a(i,j)+b(i,k)+c(k,j)
      enddo
    enddo
  enddo

end subroutine

program main
integer,parameter :: ians=16040000
integer,parameter :: n=200
real(8),dimension(1:n,1:n) :: a,b,c
data a/40000*0/, b/40000*1/, c/40000*2/

a = 1.
b = 1.
c = 1.
call sub(a,b,c,n)
if (int(sum(a)) .eq. ians) then
  print *,"ok"
else
  print *,"ng", int(sum(a)), ians
endif
end program

