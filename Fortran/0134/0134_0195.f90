subroutine s(i)
implicit character(i+1)(p)
procedure(),pointer::p
external sub
p=>sub
call p
end
call s(2)
print *,'pass'
end
subroutine sub
end
