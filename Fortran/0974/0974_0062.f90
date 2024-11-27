real ,dimension(10) :: a
real ,dimension(10) :: b
real, dimension(10) :: d=(/(i,i=1,10)/)
pointer (c,a)
c = loc(b)
a(1) = 1.0

do i=1,10
  a(i) = d(i)
enddo

write(6,*) "a=",a
write(6,*) "b=",b
write(6,*) "d=",d

end
