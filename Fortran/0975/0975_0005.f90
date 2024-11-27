call sub
end

subroutine sub
parameter (m=100)
parameter (n=50)
real*8 b(m)

do i=1,m
  b(i) = i
enddo

do i=1,n
  b(i) = 0
enddo

write(6,*) "b(20)=",b(20)

end subroutine
