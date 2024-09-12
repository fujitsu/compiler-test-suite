integer,allocatable :: ii(:,:,:)
real,allocatable :: rr(:,:,:)
logical,allocatable :: ll(:,:,:)
character,allocatable :: ch(:,:,:)
complex,allocatable :: cmp(:,:,:)

Allocate(ii(4,4,4),rr(4,4,4),ll(4,4,4),ch(4,4,4),cmp(4,4,4))
ii = 2
rr = 3.3
ll = .FALSE.
ch = 'C'
cmp = (4.4,5.5)

call sub(ii,rr,ll,ch,cmp,size(ii,1),size(ii,2),size(ii,3)) 
if(any(ii /= 2))print *, 101
if(any(rr < 3) .and. any(rr > 4))print *, 102,rr
if(any(ll .neqv. .FALSE.))print *, 103
if(any(ch /= 'C'))print *, 104
if(any(cmp /= (4.4,5.5)))print *, 105
print *, "PASS"
contains
        subroutine sub(dmy1,dmy2,dmy3,dmy4,dmy5,s1,s2,s3)
        integer :: s1,s2,s3
        integer,value :: dmy1(s1,s2,s3)
        real,value :: dmy2(s1,s2,s3)
        logical,value :: dmy3(s1,s2,s3)
        character,value :: dmy4(s1,s2,s3)
        complex,value :: dmy5(s1,s2,s3)
        dmy1 = 1
        dmy2 = 9.9
        dmy3 = .TRUE.
        dmy4 = 'H'
        dmy5 = (5.5,4.4)
        end subroutine
end
