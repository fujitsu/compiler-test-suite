subroutine s
type x
  integer::y
end type
type(x):: t1(2)
type(x),allocatable:: t2(:)
dimension n2(2)
integer,allocatable::k1,k2(:)
allocate(k1)
allocate(k2(2))
allocate(t2(2))
n1=n1+100
n2=n2+100
k1=k1+100
k2=k2+100
t1%y=t1%y+100
t2%y=t2%y+100
write(2, '(z16.16,1x,z16.16,1x,z16.16)' )loc(k1),loc(k2),loc(t2)
write(2, '(z16.16,1x,z16.16,1x,z16.16)' )loc(n1),loc(n2),loc(t1)

write(2, *)'stack  scalar(int):',n1
write(2, *)'stack  array(int) :',n2
write(2, *)'stack  struct     :',t1
write(2, *)'heap   scalar(int):',k1
write(2, *)'heap   array(int) :',k2
write(2, *)'heap   struct     :',t2
deallocate(t2)
deallocate(k2)
deallocate(k1)
end
do n=1,2
  call s()
end do
print *,'pass'
end
