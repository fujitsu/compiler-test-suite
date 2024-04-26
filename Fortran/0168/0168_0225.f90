interface aaa
subroutine sub2(i)
integer ,optional ::i
end subroutine
end interface
call aaa()
print *,'pass'
end
subroutine sub2(i)
integer ,optional ::i
end subroutine
