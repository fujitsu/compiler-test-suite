call s1
call s2
call s3
call s4
call s5
call s6
call s7
call s8
print *,"pass"
contains
subroutine s1
integer(1),pointer::a
class(*),pointer::b
allocate(a)
allocate(b,source=1)
b=>a
if(.not.associated(a,b)) print *,'err1'
end subroutine s1
subroutine s2
integer(2),pointer::a
class(*),pointer::b
allocate(a)
allocate(b,source=1)
b=>a
if(.not.associated(a,b)) print *,'err2'
end subroutine s2
subroutine s3
integer(8),pointer::a
class(*),pointer::b
allocate(a)
allocate(b,source=1)
b=>a
if(.not.associated(a,b)) print *,'err3'
end subroutine s3
subroutine s4
real(8),pointer::a
class(*),pointer::b
allocate(a)
allocate(b,source=1)
b=>a
if(.not.associated(a,b)) print *,'err4'
end subroutine s4
subroutine s5
real(16),pointer::a
class(*),pointer::b
allocate(a)
allocate(b,source=1)
b=>a
if(.not.associated(a,b)) print *,'err5'
end subroutine s5
subroutine s6
complex(8),pointer::a
class(*),pointer::b
allocate(a)
allocate(b,source=1)
b=>a
if(.not.associated(a,b)) print *,'err6'
end subroutine s6
subroutine s7
complex(16),pointer::a
class(*),pointer::b
allocate(a)
allocate(b,source=1)
b=>a
if(.not.associated(a,b)) print *,'err7'
end subroutine s7
subroutine s8
character(:),pointer::a
class(*),pointer::b
allocate(character*2::a)
allocate(b,source=1)
b=>a
if(.not.associated(a,b)) print *,'err8'
end subroutine s8
end
