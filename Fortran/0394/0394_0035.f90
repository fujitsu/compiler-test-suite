subroutine s
type x
  integer::y
end type
type(x):: t1(2)
dimension n2(2)
!$omp parallel private(n1,n2,t1)
n1=n1+100
n2=n2+100
t1%y=t1%y+100
write(3, '(z16.16,1x,z16.16,1x,z16.16)' )loc(n1),loc(n2),loc(t1)

write(3, *)'stack  scalar(int):',n1
write(3, *)'stack  array(int) :',n2
write(3, *)'stack  struct     :',t1
!$omp end parallel
end
do n=1,2
  call s()
end do
print *,'pass'
end
