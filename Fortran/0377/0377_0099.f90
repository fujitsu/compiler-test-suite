call test01()
print *,"pass"
end
subroutine test01()
i1=1
i2=2
i3=3
call sub( (/ character (i1+i2+i3) :: "a"/) )
call sub2( (/ character (i1+i2+i3) :: "a"/) )
call sub3( (/ character (i1+i2+i3-6) :: "a"/) )
call sub4( (/ character (-6) :: "a"/) )
contains
subroutine sub(ccc)
character(*) :: ccc(1)
if (len(ccc(1)).ne.6) print *,'fail'
end subroutine
subroutine sub2(ccc)
character(6) :: ccc(1)
if (len(ccc(1)).ne.6) print *,'fail'
end subroutine
subroutine sub3(ccc)
character(*) :: ccc(1)
if (len(ccc(1)).ne.0) print *,'fail'
end subroutine
subroutine sub4(ccc)
character(*) :: ccc(1)
if (len(ccc(1)).ne.0) print *,'fail'
end subroutine

end
