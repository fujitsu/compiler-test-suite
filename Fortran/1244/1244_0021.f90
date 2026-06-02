interface aaa
procedure bbb
end interface
block
interface aaa
procedure ccc
end interface
end block
call aaa(i)
if(i/=-1) print *,'err'
print *,'sngtin26:pass'
contains
subroutine bbb(i)
i=-1
end subroutine bbb
subroutine ccc(i)
end 
end
