call s1
call s2
call s3
call s4
call s5
print *,"pass"
contains
subroutine s1
character(:),allocatable::b
character(3),allocatable::a
allocate(b,source="123")
call move_alloc(b,a)
if(a/="123") print *,'err1'
end subroutine s1
subroutine s2
character(:),allocatable::b
character(3),allocatable::a
allocate(a,source="123")
call move_alloc(a,b)
if(b/="123") print *,'err2'
end subroutine s2
subroutine s3
character(:),allocatable::b
character(0),allocatable::a
allocate(a,source="")
call move_alloc(a,b)
if(len(b)/=0) print *,'err3'
end subroutine s3
subroutine s4
character(:),allocatable::b
character(-1),allocatable::a
allocate(a,source="")
call move_alloc(a,b)
if(len(b)/=0) print *,'err4'
end subroutine s4
subroutine s5
character(:),allocatable::b
character(:),allocatable::a
allocate(a,source=repeat("1",65000))
call move_alloc(a,b)
if(b/=repeat("1",65000)) print *,'err5'
end subroutine s5
end
