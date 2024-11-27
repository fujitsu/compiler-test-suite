call sub
end

subroutine sub
parameter (l=100)
parameter (m=100)
parameter (n=100)
common //a,b
real*8 a(l),b(m)

do i=1,n
  b(i) = i
enddo

do i=1,n
  a(i)=b(i)
enddo

write(6,*) "a=",a
write(6,*) "b=",b

end subroutine
