interface
subroutine f(a) 
dimension a(2)
end subroutine 
end interface

dimension c(2)
call f(c)
end

subroutine f(a) 
end subroutine 
