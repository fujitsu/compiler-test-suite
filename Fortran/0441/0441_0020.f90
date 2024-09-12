subroutine s1(i)
external :: i
call ss1
contains
subroutine ss1()
call i
end subroutine
end subroutine
subroutine s2(t)
external :: t
call ss1
contains
subroutine ss1()
call t
end subroutine
end subroutine
subroutine s0
interface 
subroutine t1
end subroutine t1
end interface
call s1(t1 )
call s2(t1 )
end
call s0
print *,'pass'
end
subroutine t1
end
subroutine t2
end
