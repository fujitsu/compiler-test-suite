type ty1
real,pointer::p(:)
end type
type (ty1) ::str

complex,pointer :: a2(:)
allocate (a2(2))
a2=(3,4)
str=ty1(a2(1:2)%im)
If(any(str%p .ne. 4))print*,"101"
print*,"pass"
end
 
