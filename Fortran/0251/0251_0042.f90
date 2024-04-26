call ss

contains
subroutine ss
type tt
 integer :: ii(4)=2
end type

type ct
 class(tt),pointer :: c(:,:)=>NULL()
 class(tt),pointer :: b(:,:)
end type

print*,'within subroutine'
block
class(ct),pointer :: obj(:,:)
class(ct),pointer :: obj2(:,:)=>NULL()

allocate(obj2(2,2))
allocate(obj2(2,2)%c(2,2),obj2(2,2)%b(2,2))
if(any(obj2(2,2)%c%ii(2)/=2)) print*,101
if(any(obj2(2,2)%b%ii(2)/=2)) print*,102

obj2(2,2)%c%ii(2)=4
obj2(2,2)%b%ii(2)=5
obj=>obj2
if(any(obj(2,2)%c%ii(2)/=4)) print*,103
if(any(obj(2,2)%b%ii(2)/=5)) print*,104
print*,'pass'
end block
end subroutine
end

