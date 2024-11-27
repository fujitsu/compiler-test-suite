print *,"pass"
end

subroutine sub1(char)
implicit character(*)(x)
implicit character(n)(y)
character :: char
value :: char
external ::xxx
end

function xxx() result(char)
character(*) :: char
char='a'
end
