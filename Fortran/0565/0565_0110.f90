integer :: ii(3)
real :: rr(3)
logical :: ll(3)
character :: ch(3)
complex :: cmp(3)

ii = 2
rr = 3.3
ll = .FALSE.
ch = 'C'
cmp = (4.4,5.5)

call sub([2,2,2,2,2],[3.3,3.3,3.3,3.3,3.3],[.FALSE.,.FALSE.,.FALSE.,.FALSE.,.FALSE.],['C','C','C','C','C'],[(4.4,5.5),(4.4,5.5),(4.4,5.5),(4.4,5.5),(4.4,5.5)]) 
if(any(ii /= 2))print *, 101
if(any(rr < 3) .and. any(rr > 4))print *, 102,rr
if(any(ll .neqv. .FALSE.))print *, 103
if(any(ch /= 'C'))print *, 104
if(any(cmp /= (4.4,5.5)))print *, 105
print *, "PASS"
contains
        subroutine sub(dmy1,dmy2,dmy3,dmy4,dmy5)
        integer,value :: dmy1(3)
        real,value :: dmy2(3)
        logical,value :: dmy3(3)
        character,value :: dmy4(3)
        complex,value :: dmy5(3)
        dmy1 = 1
        dmy2 = 9.9
        dmy3 = .TRUE.
        dmy4 = 'H'
        dmy5 = (5.5,4.4)
        end subroutine
end
