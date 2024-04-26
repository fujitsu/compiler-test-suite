interface
subroutine sub
end subroutine
end interface
procedure(sub)::d1
block
procedure(sub),pointer :: pp
pp=>d1
call pp
end block
end

subroutine d1
print*,"pass"
end subroutine

