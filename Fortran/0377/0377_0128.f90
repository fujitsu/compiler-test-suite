call test01()
print *,"pass"
end
subroutine test01()
i1=6
call sub( (/ character (i1) :: /) )
contains
subroutine sub(ccc)
character(*) :: ccc(*)
if (len(ccc(1)).ne.6) print *,'fail'
end subroutine
end

