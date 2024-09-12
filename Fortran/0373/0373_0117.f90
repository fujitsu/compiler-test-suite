subroutine sub1
character*4 a
a='1234'
a(2:4)=a(1:3)
print*, a
end subroutine

subroutine sub2
character*10  a10
character*100 a
a10='1234567890'
a= a10//a10//a10//a10//a10 // a10//a10//a10//a10//a10
a(2:100)=a(1:99)
print*, a
end subroutine

call sub1; call sub2
end
