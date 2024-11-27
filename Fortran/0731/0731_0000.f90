call sub()
print *,'pass'
end


subroutine sub()
common /com/ i
external ss01 !$pragma stdcall(ss01)
call ss01()
if (i.ne.1)write(6,*) "NG"
end

subroutine ss01() !$pragma stdcall(ss01)
common /com/ i
i=1
end
