interface
subroutine s1
end subroutine
end interface
call sub(s1)
contains
subroutine sub(d1)
EXTERNAL::d1
block
EXTERNAL::d1
call d1
end block
call d1
end subroutine

end
subroutine s1
print*,"subroutine call"
end subroutine
subroutine d1
print*,"BLOCK call"
end subroutine
