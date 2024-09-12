recursive subroutine s2()
call ent()
return
entry ent() bind(c,name='AAAA')
return
entry ent2() bind(c,name='BBBB')
call ent2()
end subroutine
subroutine s1() bind(c,name='CCCC')
end subroutine
interface
subroutine s1() bind(c,name='CCCC')
end subroutine
end interface
call s1
call s2
print *,'pass'
end
