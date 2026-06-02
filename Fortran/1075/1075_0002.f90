module mod0 
common /m1/ii
integer kk
data kk /1/
equivalence (ii,kk)
end
module mod
common /m12/iii
integer kkk
data kkk /1/
contains
subroutine subbb()
use mod0
common /c1/ iia
common /com1/ jja
data i /1/
equivalence(iia,i)
equivalence(jja,j)
save
i=1
j=2
call sub()
if (j.ne.2) print *,'fail'
contains
subroutine sub()
common /com1/ j
equivalence (j,kkkk,kk,k)
endsubroutine
end subroutine
end

module mod2
contains
subroutine subbb2()
use mod0
common /c2/ i  
common /com2/ j
data i /1/
j=2
call sub()
if (j.ne.2) print *,'fail'
contains
subroutine sub()
common /com1/ j
endsubroutine
end subroutine

end



use mod
use mod2
call subbb()
call subbb2()
print *,"pass"
end
