call test01()
print *,"pass"
end

subroutine test01()
contains 
subroutine sub()
implicit character(1) (a)
implicit character(len=1) (b)
implicit character(*) (c)
implicit character(:) (d)
end subroutine
end subroutine
