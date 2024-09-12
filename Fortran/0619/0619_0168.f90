subroutine s1
interface
 subroutine s
 end subroutine
end interface
procedure (s)::sub
procedure (sub):: foo
procedure (sub),pointer:: p
save::p
call foo
p=>sub
call p
end
call s1
print *,'pass'
end
subroutine sub
entry foo
end subroutine
