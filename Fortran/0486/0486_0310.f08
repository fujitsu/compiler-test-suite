subroutine s1
integer,volatile,pointer::p(:)
integer,target:: t(3)=[1,2,3]
p=> t( ::2 )
call ss2( p(:) )
call ss4( p(:) )
call ss5( p(:) )
call ss6( p(:) )
rewind 1
read(1,*) k1,k2
if (any([k1,k2]/=[1,3])) print *,101
read(1,*) k1,k2
if (any([k1,k2]/=[1,3])) print *,102
read(1,*) k1,k2
if (any([k1,k2]/=[1,3])) print *,103
read(1,*) k1,k2
if (any([k1,k2]/=[1,3])) print *,104
read(1,*,end=1) k1,k2
print *,206
1 continue
contains
subroutine ss1 ( d )
integer,volatile,contiguous:: d(:)
write(1,*) d
end subroutine
subroutine ss2 ( d )
integer,volatile:: d(:)
write(1,*) d
end subroutine
subroutine ss3 ( d )
integer,asynchronous,contiguous:: d(:)
write(1,*) d
end subroutine
subroutine ss4 ( d )
integer,asynchronous:: d(:)
write(1,*) d
end subroutine
subroutine ss5 ( d )
integer,contiguous:: d(:)
write(1,*) d
end subroutine
subroutine ss6 ( d )
integer:: d(:)
write(1,*) d
end subroutine
end
call s1
print *,'pass'
end
