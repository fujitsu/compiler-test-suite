call aaa
call bbb
print *,'pass'
contains
subroutine aaa
intrinsic ibits,ishftc
end subroutine
subroutine bbb
intrinsic IBITS,ISHFTC
end subroutine
end
