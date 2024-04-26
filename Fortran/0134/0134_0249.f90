subroutine s(x)
external x
call x
end subroutine
subroutine ss
common //i
procedure(),pointer::p
procedure()::sub
p=>sub
call s(p)
if (i/=1) print *,101,i
end
call ss
print *,'pass'
end
subroutine sub
common //i
i=1
end
