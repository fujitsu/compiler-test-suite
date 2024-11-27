call test01()
print *,"pass"
end

subroutine test01()
integer(kind=8) ,parameter :: ip=x"7fffffff"
character(kind=4,len=ip) :: cha
end
