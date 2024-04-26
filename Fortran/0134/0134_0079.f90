subroutine s
call sub(2)
call foo(1)
call t('1')
contains
subroutine t(c)
value ::c
character(1)::c
c='1'
end subroutine
subroutine foo(i)
value ::i
i=2
call foo2(i) 
if (i/=3)print *,102,i
call foo3(i) 
if (i/=3)print *,104,i
end subroutine
subroutine foo2(i)
i=3
end subroutine
subroutine foo3(i)
value ::i
i=i+2
if (i/=5)print *,103,i
end subroutine
end
subroutine sub(i)
if (i/=2)print *,1
end
call s
print *,'pass'
end
