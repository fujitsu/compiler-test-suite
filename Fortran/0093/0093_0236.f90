type ty1
real,pointer::p(:)
end type

type ty2
complex,pointer::a2(:)
end type

type (ty2) ::obj
type (ty1) ::str
allocate (obj%a2(3))
obj%a2=(3,4)
str = ty1(obj%a2(:)%im)
if(any(str%p .ne. 4)) print*,101
print*,"pass"
end
 
