common // i 
equivalence(i,jj,kk)
equivalence(kk,k)
common /com1/ j
common /com2/ j2,j3
data k /1/
j=2
j2=2
j3=2
call sub()
if (j.ne.2) print *,'fail'
if (j2.ne.2) print *,'fail'
if (j3.ne.2) print *,'fail'
print *,"pass"
end


subroutine sub()
call isub()
call jsub()
contains
subroutine isub()
common /com2/ j2,j3
equivalence (j3,jj)
save
end subroutine
subroutine jsub()
common // j
end subroutine
end
