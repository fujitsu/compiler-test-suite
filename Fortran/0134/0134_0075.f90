subroutine x
interface
 subroutine s(c) bind(c,name='abc')
   character c
 end subroutine
end interface
call s('1')
end
call x
print *,'pass'
end
subroutine foo(c) bind(c,name='abcdefg')
character c
if (c/='1')print *,101,c
end
 subroutine s(c) bind(c,name='abc')
   character c
if (c/='1')print *,102,c
 end subroutine


