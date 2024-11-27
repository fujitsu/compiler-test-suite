call test01()
print *,'pass'
end 

subroutine test01()
integer i /1/
end subroutine

subroutine test02()
integer i 
data i/1/
end subroutine

subroutine test03()
dimension :: i(1)
integer i /1/
end subroutine

subroutine test04()
integer ::i =1
end subroutine

subroutine test05()
data    i /1/
end subroutine

subroutine test06()
i =1
end subroutine

subroutine test07()
i =1
i =1
end subroutine

subroutine test08()
integer k /1/
ifun(k)=1
end subroutine

subroutine test09()
integer k /1/
ifun()=k
end subroutine

subroutine test10()
integer k 
k=1
call sub(k)
contains
subroutine sub(ii)
ii=1
end subroutine
end subroutine

subroutine test11(k)
integer k
k=1
end subroutine

subroutine test12()
do i=1,10
end do
end subroutine

subroutine test13()
integer a(10)
data (a(i),i=1,10) /10*1/
a(1)=a(2)
end subroutine

subroutine test14()
integer a(10)
a=1
print *,(a(1),i=1,10)
end subroutine

subroutine test15()
integer a(10)
a=(/(1,2,3,4,5,6,7,8,9,10,i=1,1)/)
a=a
end subroutine

subroutine test16()
forall (i=1:10)
end forall
end subroutine

subroutine test17()
allocatable :: a(:)
allocate(a(10),stat=i)
end subroutine
