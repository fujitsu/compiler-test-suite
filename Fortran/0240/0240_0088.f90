real,dimension(5)::a,b,c
a=1
b=1
c=1
do concurrent(k=1:5)
c(k) = a(k)+sqrt(b(k))
end do

call test()

print *,'pass'
end

subroutine test()
integer ::a=1,b=2
do i=1,100
do while (a>b)
do 10 j=1,100,3
10 continue
end do
end do
end
