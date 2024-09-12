subroutine s1(i)
external :: i
call i
end subroutine
subroutine s2(t)
external :: t
call t
end subroutine
subroutine s0
external:: t1,t2
call t1()
call t2()
call s1(t1 )
call s2(t2 )
end
call s0
print *,'pass'
end
subroutine t1
end
subroutine t2
end
