type ty
integer :: ii(4)
real :: rr(4)
logical :: ll(4)
character :: ch(4)
complex :: cmp(4)
end type

type(ty) :: obj

obj%ii = 2
obj%rr = 3.3
obj%ll = .FALSE.
obj%ch = 'C'
obj%cmp = (4.4,5.5)

call sub(obj%ii,obj%rr,obj%ll,obj%ch,obj%cmp) 
if(any(obj%ii /= 2))print *, 101
if(any(obj%rr < 3) .and. any(obj%rr > 4))print *, 102,obj%rr
if(any(obj%ll .neqv. .FALSE.))print *, 103
if(any(obj%ch /= 'C'))print *, 104
if(any(obj%cmp /= (4.4,5.5)))print *, 105
print *, "PASS"
contains
        subroutine sub(dmy1,dmy2,dmy3,dmy4,dmy5)
        integer,value :: dmy1(4)
        real,value :: dmy2(4)
        logical,value :: dmy3(4)
        character,value :: dmy4(4)
        complex,value :: dmy5(4)
        dmy1 = 1
        dmy2 = 9.9
        dmy3 = .TRUE.
        dmy4 = 'H'
        dmy5 = (5.5,4.4)
        end subroutine
end
