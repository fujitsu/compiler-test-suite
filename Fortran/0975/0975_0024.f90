real*8 a(10),b(10)

a=0

do i=1,10
  b(i) =i
enddo

call sub(a,b)

write(6,*) "call out a=",a
write(6,*) "call out b=",b
end

subroutine sub(a,b)
real*8 a(10),b(10)

call sub2(m,n)

do i=1,m
  a(i) = 0
enddo

write(6,*) "call into a=",a
write(6,*) "call into b=",b
end subroutine

subroutine sub2(m,n)
integer*4 m,n
m=5
n=10
end subroutine
