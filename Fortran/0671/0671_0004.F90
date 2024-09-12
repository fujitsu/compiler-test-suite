#define false true
print *,"pass"
call test01()
end

subroutine test01()
logical ::l
l=.false.
if(1.eq.2)print *,l
l=.true.
if(1.eq.2)print *,l
l=l
end

