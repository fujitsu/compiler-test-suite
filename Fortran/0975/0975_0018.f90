call sub
end

subroutine sub
parameter (l=30)
parameter (m=100)
parameter (n=50)
common //a,b
real*8 a(m),b(m)

a=3
b=5

do i=1,m
  b(i) = i
enddo

do i=1,n
  a(i)=b(i)
enddo

do i=1,l
  a(i)=0
enddo

write(6,*) "a=",a
write(6,*) "b=",b

end subroutine
