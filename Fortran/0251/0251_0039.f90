type tt
 integer :: ii=2
end type

block
type ct
 class(tt),pointer :: c=>NULL()
 class(tt),pointer :: b
end type

class(ct),pointer :: obj
class(ct),pointer :: obj2=>NULL()

allocate(obj2)
allocate(obj2%c,obj2%b)
if(obj2%c%ii/=2) print*,101
if(obj2%b%ii/=2) print*,102

obj2%c%ii=4
obj2%b%ii=5
obj=>obj2
if(obj%c%ii/=4) print*,103
if(obj%b%ii/=5) print*,104
print*,'pass'
end block
end

