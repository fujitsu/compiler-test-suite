call s1
call s2
call s3
call s4
call s5
call s6
call s7
print *,'pass'
contains
subroutine s1
class(*),pointer :: x(:)
integer(1),target :: y(1)
allocate(x,source=[1])
x => y
select type(z=>x)
type is (integer(1))
if(.not.associated(x,y)) print *,'err1'
class default
   print *,'ng1'
end select
end subroutine s1
subroutine s2
class(*),pointer :: x(:)
integer(2),target :: y(1)
allocate(x,source=[1])
x => y
select type(z=>x)
type is (integer(2))
if(.not.associated(x,y)) print *,'err2'
class default
   print *,'ng2'
end select
end subroutine s2
subroutine s3
class(*),pointer :: x(:)
integer(8),target :: y(1)
allocate(x,source=[1])
x => y
select type(z=>x)
type is (integer(8))
if(.not.associated(x,y)) print *,'err3'
class default
   print *,'ng3'
end select
end subroutine s3
subroutine s4
class(*),pointer :: x(:)
real(8),target :: y(1)
allocate(x,source=[1])
x => y
select type(z=>x)
type is (real(8))
if(.not.associated(x,y)) print *,'err4'
class default
   print *,'ng4'
end select
end subroutine s4
subroutine s5
class(*),pointer :: x(:)
real(16),target :: y(1)
allocate(x,source=[1])
x => y
select type(z=>x)
type is (real(16))
if(.not.associated(x,y)) print *,'err5'
class default
   print *,'ng5'
end select
end subroutine s5
subroutine s6
class(*),pointer :: x(:)
complex(8),target :: y(1)
allocate(x,source=[1])
x => y
select type(z=>x)
type is (complex(8))
if(.not.associated(x,y)) print *,'err6'
class default
   print *,'ng6'
end select
end subroutine s6
subroutine s7
class(*),pointer :: x(:)
complex(16),target :: y(1)
allocate(x,source=[1])
x => y
select type(z=>x)
type is (complex(16))
if(.not.associated(x,y)) print *,'err7'
class default
   print *,'ng7'
end select
end subroutine s7
end
