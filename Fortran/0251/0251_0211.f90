interface
subroutine sub
end subroutine
end interface
block
procedure(sub)::d1
call d1
end block
end

subroutine d1
print*,"d1"
end subroutine

