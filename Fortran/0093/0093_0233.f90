type ty1
real,pointer::p1
end type
type (ty1) ::str

complex,pointer :: a2
allocate (a2)
a2=(3,4)
str=ty1(a2%re)
If(str%p1 .ne. 3)print*,"101"
print*,"pass"
end
 
