call test01()
print *,"pass"
end

subroutine test01()
procedure() :: yfun
if (1.eq.2)print *,yfun()
end
function yfun()
yfun=1.0
end
