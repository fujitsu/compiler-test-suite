print *,'pass'
end

subroutine sub()
interface
subroutine t()
end subroutine
end interface
call s2( t )
end

subroutine s2(e)
interface
subroutine t()
end subroutine
end interface
procedure(t) :: e
call e()
end
subroutine t()
end subroutine
