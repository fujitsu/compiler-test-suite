interface
subroutine su(a) 
allocatable   :: a
end subroutine
end interface

allocatable   :: xx
call su(xx)
end

subroutine su(a) 
end subroutine
