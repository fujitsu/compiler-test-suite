print *,'pass'
end

subroutine sub()
interface
subroutine t()
end subroutine
end interface
call s2( t )
end

subroutine s2(t)
interface
subroutine e()
end subroutine
end interface
procedure(e) :: t
call t()
end
subroutine t()
end subroutine
