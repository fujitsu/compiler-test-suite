subroutine s1
integer :: a1(1,1)
data ((a1(k1,k2),k1=1,1),k2=1,1)/1/
integer:: a2(1)= [(( k3*k4 , k3=1,1),k4=1,1)] 
integer:: a3(1)
parameter(a3 = [(( k5*k6 , k5=1,1),k6=1,1)] )
n1(n)=k1+n
n2(n)=k2+n
n3(n)=k3+n
n4(n)=k4+n
n5(n)=k5+n
n6(n)=k6+n
call ss
contains
subroutine ss
implicit none
if (a1(1,1)/=1) print *,101
if (a2(1)/=1) print *,102
if (a3(1)/=1) print *,103
k1=1
k2=1
k3=1
k4=1
k5=1
k6=1
if (n1(1)/=2) print *,201
if (n2(1)/=2) print *,201
if (n3(1)/=2) print *,201
if (n4(1)/=2) print *,201
if (n5(1)/=2) print *,201
if (n6(1)/=2) print *,201
write(3,'("k1",z16.16)')loc(k1)
write(3,'("k2",z16.16)')loc(k2)
write(3,'("k3",z16.16)')loc(k3)
write(3,'("k4",z16.16)')loc(k4)
write(3,'("k5",z16.16)')loc(k5)
write(3,'("k6",z16.16)')loc(k6)
end subroutine
end
call s1
print *,'pass'
end
