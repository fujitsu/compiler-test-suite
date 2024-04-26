interface
subroutine sub
end subroutine
end interface

call ss

contains
subroutine ss
print*,'within subroutine'
block
procedure(sub)::d1
call d1
end block
end subroutine
end

subroutine d1
print*,"d1"
end subroutine

