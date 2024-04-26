block
type tt
 integer :: ii(2)=2
end type

type ct
 class(tt),pointer :: c(:)=>NULL()
 class(tt),pointer :: b(:)
end type

class(ct),pointer :: obj(:,:,:)
class(ct),pointer :: obj2(:,:,:)=>NULL()

allocate(obj2(3,4,5))
allocate(obj2(2,2,2)%c(3),obj2(2,2,2)%b(2))
if(any(obj2(2,2,2)%c(2)%ii/=2)) print*,101
if(any(obj2(2,2,2)%b(2)%ii/=2)) print*,102

obj2(2,2,2)%c(2)%ii=4
obj2(2,2,2)%b(2)%ii=5
obj=>obj2
if(any(obj(2,2,2)%c(2)%ii/=4)) print*,103
if(any(obj(2,2,2)%b(2)%ii/=5)) print*,104
print*,'pass'
end block
end

