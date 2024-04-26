block
interface gnr
subroutine sub1(d1,d2)
integer::d1,d2
end subroutine
end interface

interface gnr
subroutine sub2(d1,d2)
integer::d1
real::d2
end subroutine
end interface
call gnr(12,10)
call gnr(10,20.50)
end block

block
interface gnr
subroutine sub3(d1,d2)
real::d1,d2
end subroutine
end interface

interface gnr
subroutine sub4(d1,d2)
real::d1
integer::d2
end subroutine
end interface
call gnr(12.50,10.25)
call gnr(10.5,20)
end block
end

subroutine sub1(d1,d2)
integer::d1,d2
print*,"in sub1",d1+d2
end subroutine
subroutine sub2(d1,d2)
integer::d1
real::d2
print*,"in sub1",d1*d2
end subroutine
subroutine sub3(d1,d2)
real::d1,d2
print*,"in sub1",d1-d2
end subroutine
subroutine sub4(d1,d2)
real::d1
integer::d2
print*,"in sub1",d1-d2
end subroutine
