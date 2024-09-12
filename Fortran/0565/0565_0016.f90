integer :: ii(5)
real :: rr(5)
logical :: ll(5)
character :: ch(5)
complex :: cmp(5)

ii = 2
rr = 3.3
ll = .FALSE.
ch = 'C'
cmp = (4.4,5.5)

call sub(ii,rr,ll,ch,cmp,size(ii)) 
if(any(ii /= 2))print *, 101
if(any(rr < 3) .and. any(rr > 4))print *, 102,rr
if(any(ll .neqv. .FALSE.))print *, 103
if(any(ch /= 'C'))print *, 104
if(any(cmp /= (4.4,5.5)))print *, 105
print *, "PASS"
contains
        subroutine sub(dmy1,dmy2,dmy3,dmy4,dmy5,dmy6_s)
        integer :: dmy6_s
        integer,value :: dmy1(dmy6_s)
        real,value :: dmy2(dmy6_s)
        logical,value :: dmy3(dmy6_s)
        character,value :: dmy4(dmy6_s)
        complex,value :: dmy5(dmy6_s)
        dmy1 = 1
        dmy2 = 9.9
        dmy3 = .TRUE.
        dmy4 = 'H'
        dmy5 = (5.5,4.4)
        end subroutine
end