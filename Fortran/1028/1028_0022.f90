subroutine sub()
integer:: a(10),b(10,10)
a=1
b=1
n=1
do j=1,n
do i=1,n
a(i) = a(i) + b(i,j)
enddo
enddo
end
print *,'pass'
end
