integer,pointer::p1
integer,target::t1=100
call sub
if (p1/=100)write(6,*) "NG"
print *,'pass'
contains
subroutine sub
integer,target::a1
p1=>a1
p1=>t1
end subroutine
end


