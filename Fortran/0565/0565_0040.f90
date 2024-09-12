integer :: ii(5)
real :: rr(5)
logical :: ll(5)
character :: ch(5)
complex :: cmp(5)
integer :: xx
interface 
        function fun(dmy1,dmy2,dmy3,dmy4,dmy5)
        integer,value :: dmy1(5)
        real,value :: dmy2(5)
        logical,value :: dmy3(5)
        character,value :: dmy4(5)
        complex,value :: dmy5(5)
        integer :: fun
        end function
end interface

ii = 2
rr = 3.3
ll = .FALSE.
ch = 'C'
cmp = (4.4,5.5)

xx =  fun(ii,rr,ll,ch,cmp) 
if(xx /= 1) print *,000
if(any(ii /= 2))print *, 101
if(any(rr < 3) .and. any(rr > 4))print *, 102,rr
if(any(ll .neqv. .FALSE.))print *, 103
if(any(ch /= 'C'))print *, 104
if(any(cmp /= (4.4,5.5)))print *, 105
print *, "PASS"
end
        function fun(dmy1,dmy2,dmy3,dmy4,dmy5)
        integer,value :: dmy1(5)
        real,value :: dmy2(5)
        logical,value :: dmy3(5)
        character,value :: dmy4(5)
        complex,value :: dmy5(5) 
        integer :: fun
        dmy1 = 1
        dmy2 = 9.9
        dmy3 = .TRUE.
        dmy4 = 'H'
        dmy5 = (5.5,4.4)
        fun = 1
        end function
