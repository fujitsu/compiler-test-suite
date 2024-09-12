integer :: ii(3),ii2(3)
real :: rr(3),rr2(3)
logical :: ll(3),ll2(3)
character :: ch(3),ch2(3)
complex :: cmp(3),cmp2(3)

ii =  2
ii2 =  2
rr = 3.3
rr2 = 3.3
ll = .FALSE.
ll2 = .FALSE.
ch = 'C'
ch2 = 'C'
cmp = (4.4,5.5)
cmp2 = (4.4,5.5)

call sub((ii+ii2),(rr + rr2),(ll .OR. ll2),(ch // ch2),(cmp + cmp2)) 
if(any(ii /= 2))print *, 101
if(any(rr < 3) .and. any(rr > 4))print *, 102,rr
if(any(ll .neqv. .FALSE.))print *, 103
if(any(ch /= 'C'))print *, 104
if(any(cmp /= (4.4,5.5)))print *, 105
print *, "PASS"
contains
        subroutine sub(dmy1,dmy2,dmy3,dmy4,dmy5)
        integer :: dmy1(3)
        real :: dmy2(3)
        logical :: dmy3(3)
        character(len = 2) :: dmy4(3)
        complex :: dmy5(3)
        end subroutine
end
