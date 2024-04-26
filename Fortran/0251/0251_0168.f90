interface
subroutine ss
end subroutine
end interface
call ss
end

subroutine ss
block
integer,dimension(101,102,103,5)::A
A=1
print*,ubound(A,1),ubound(A,4)
end block
end subroutine
