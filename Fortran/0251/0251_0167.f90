interface
subroutine ss
end subroutine
end interface
call ss
end

subroutine ss
block
integer,dimension(101,102,103)::A,B,C
B=1
C=2
PRINT*,B(101,102,103)
A=C
A(101,102,103)=C(1,2,3)
PRINT*,A(101,102,103)
end block
end subroutine
