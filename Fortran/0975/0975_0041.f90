real(kind=8) ,dimension(10):: a,b
volatile a,b

call sub(n,m)

do i=1,n
  b(i) = i
enddo

do i=1,m
  a(i)=0
enddo

write(6,*) "a=",a
write(6,*) "b=",b

end

subroutine sub(m,n)
integer*4 m,n
m=10
n=10
end subroutine
