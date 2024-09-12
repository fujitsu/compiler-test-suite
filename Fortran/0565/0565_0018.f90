type ty
integer ,allocatable :: ii(:,:,:)
real ,allocatable :: rr(:,:,:)
logical ,allocatable :: ll(:,:,:)
character ,allocatable :: ch(:,:,:)
complex ,allocatable :: cmp(:,:,:)
end type

type(ty) ,allocatable :: obj

Allocate(obj)
Allocate(obj%ii(4,4,4),obj%rr(4,4,4),obj%ll(4,4,4),obj%ch(4,4,4),obj%cmp(4,4,4))
obj%ii = 2
obj%rr = 3.3
obj%ll = .FALSE.
obj%ch = 'C'
obj%cmp = (4.4,5.5)

call sub(obj%ii,obj%rr,obj%ll,obj%ch,obj%cmp,size(obj%ii,1),size(obj%ii,2),size(obj%ii,3)) 
if(any(obj%ii /= 2))print *, 101
if(any(obj%rr < 3) .and. any(obj%rr > 4))print *, 102,obj%rr
if(any(obj%ll .neqv. .FALSE.))print *, 103
if(any(obj%ch /= 'C'))print *, 104
if(any(obj%cmp /= (4.4,5.5)))print *, 105
print *, "PASS"
contains
        subroutine sub(dmy1,dmy2,dmy3,dmy4,dmy5,s1,s2,s3)
        integer :: s1,s2,s3
        integer,value  :: dmy1(s1,s2,s3)
        real,value  :: dmy2(s1,s2,s3)
        logical,value  :: dmy3(s1,s2,s3)
        character,value  :: dmy4(s1,s2,s3)
        complex,value  :: dmy5(s1,s2,s3)
        dmy1 = 1
        dmy2 = 9.9
        dmy3 = .TRUE.
        dmy4 = 'H'
        dmy5 = (5.5,4.4)
        end subroutine
end
