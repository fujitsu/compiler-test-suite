call test01()
print *,"pass"
end

subroutine test01()
intrinsic new_line
character(kind=1,len=1)  :: char 
if (1.eq.0) then
  char=new_line("a")
  char=new_line(achar(60))
  char=new_line((/achar(60)/))
end if
end subroutine
