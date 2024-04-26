subroutine s1
 type x
   real,pointer:: x1(:)
 end type
 type y
   type(x),pointer::y1(:)
   type(x)        ::y2(2)
 end type

 type(y)        ::z1
 type(y),pointer::z2

allocate(z2)
allocate(z1%y1(2))
allocate(z2%y1(2))
allocate(z1%y1(2)%x1(2))
allocate(z2%y1(2)%x1(2))
allocate(z1%y2(2)%x1(2))
allocate(z2%y2(2)%x1(2))

k=2
do n=1,2
  z1%y1(k)%x1(n)=1.0
  z2%y1(k)%x1(n)=1.0
  z1%y2(k)%x1(n)=1.0
  z2%y2(k)%x1(n)=1.0
end do
end
call s1
print *,'pass'
end
