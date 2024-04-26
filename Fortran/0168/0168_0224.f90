interface aaa
subroutine sub2(i,j)
integer ,optional ::i
end subroutine
end interface
call aaa(j=2)
print *,'pass'
end
subroutine sub2(i,j)
integer ,optional ::i
end subroutine
