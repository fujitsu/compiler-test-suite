call test()
print *,'pass'
end
subroutine test()
integer :: a(100)=1,b(100,100)=1
do 10 i=1,100
a(i) = b(i,i)
10 continue
end
