call sub01()
call sub02()
call sub06()
print *,'pass'
end

subroutine sub01()
i=1
if (.true._2) i=10
if (i.ne.10) print *,'fail'
if (.true._8) i=20
if (i.ne.20) print *,'fail'
i=50
if (.not..true._2) i=10
if (i.ne.50) print *,'fail'
if (.not..true._8) i=20
if (i.ne.50) print *,'fail'
i=60
if (.not..false._2) i=10
if (i.ne.10) print *,'fail'
if (.not..false._8) i=20
if (i.ne.20) print *,'fail'
i=70
if (.false._2) i=10
if (i.ne.70) print *,'fail'
if (.false._8) i=20
if (i.ne.70) print *,'fail'
end subroutine

subroutine sub02()
i=1
if (.false.) then
 i=2
else if (.true._2) then
 i=10
end if
if (i.ne.10) print *,'fail'
if (.false.) then
 i=2
else if (.true._8) then
 i=20
end if
if (i.ne.20) print *,'fail'
i=50
if (.false.) then
 i=2
else if (.not..true._2) then
 i=10
end if
if (i.ne.50) print *,'fail'
if (.false.) then
 i=2
else if (.not..true._8) then
 i=20
end if
if (i.ne.50) print *,'fail'
i=60
if (.false.) then
 i=2
else if (.not..false._2) then
 i=10
end if
if (i.ne.10) print *,'fail'
if (.false.) then
 i=2
else if (.not..false._8) then
 i=20
end if
if (i.ne.20) print *,'fail'
i=70
if (.false.) then
 i=2
else if (.false._2) then
 i=10
end if
if (i.ne.70) print *,'fail'
if (.false.) then
 i=2
else if (.false._8) then
 i=20
end if
if (i.ne.70) print *,'fail'
end subroutine

subroutine sub06()
logical(kind=8)  a001,a002
open (unit=8)
inquire(unit=8,opened=a001,named=a002)
if (a001.neqv..true.) print *,'fail'
if (a002.neqv..true.) print *,'fail'
end
