subroutine s1
complex,target :: cmp(2:3)=[(11.0,1.0),(22.0,2.0)]
if (loc(cmp%im)-loc(cmp%re)/=4) print *,101
end
call s1
print *,"pass"
end
