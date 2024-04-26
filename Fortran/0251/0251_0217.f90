interface
subroutine sub
end subroutine
end interface

procedure(sub)::d1
call ss(d1)

contains
subroutine ss(dmy)
procedure(sub) :: dmy
block
call dmy
end block
end subroutine
end

subroutine d1
print*,"pass"
end subroutine

