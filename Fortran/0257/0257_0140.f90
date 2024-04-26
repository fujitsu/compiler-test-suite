subroutine s1()
character(len=10),pointer::t1
allocate(t1)
t1= 'aaaaaaaaaa'
call sub(t1(:))
if(t1.ne.'bbbbbbbbbb')print*,"105",t1
contains
subroutine sub(a)
character(len=1)::a(10)
if(len(a).ne.1)print*,"101", len(a)
if(loc(a).ne.loc(t1))print*,"103",loc(a), loc(t1)
if(any(a.ne.['a','a','a','a','a','a','a','a','a','a']))print*,"104", a
a='b'
end subroutine
end subroutine
call s1()
print *,'pass'
end

