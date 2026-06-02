interface aaa
subroutine sub(dmy,ii)
 integer,contiguous :: dmy(:)
end subroutine
subroutine sub2(dmy,rr)
 integer            :: dmy(:)
end subroutine
end interface
integer :: arr(8)
call aaa(arr(::8),1.0)
print *,'pass'
end
subroutine sub2(dmy,rr)
 integer            :: dmy(:)
end subroutine
