call s0()
call s1()
print *,'pass'
end
subroutine s0
parameter (n=0)
call ss0(n)
if (n/=0)print *,'error'
end
subroutine ss0(n)
if (n/=0)print *,'error'
end
subroutine s1
integer,dimension(3),parameter::n=(/1,2,3/)
call ss1(n(1),1)
call ss1(n(2),2)
call ss1(n(3),3)
if (n(1)-1/=0)print *,'error'
if (n(2)-2/=0)print *,'error'
if (n(3)-3/=0)print *,'error'
end
subroutine ss1(m,mm)
call ss0(m-mm)
end
