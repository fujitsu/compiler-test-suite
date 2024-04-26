subroutine x
interface
 subroutine s(c) bind(c)
   character c
 end subroutine
end interface
procedure(s),bind(c,name='abcdefg')::foo
call foo('1')
end
call x
print *,'pass'
end
subroutine foo(c) bind(c,name='abcdefg')
character c
if (c/='1')print *,101,c
end


