subroutine s1
integer,volatile,pointer::p(:)
integer,target:: t(3)=[1,2,3]
p=> t( :)
call ss1( p(:) )
call ss3( p(:) )
contains
subroutine ss1 ( d )
integer,contiguous:: d(:)
write(1,*) d
end subroutine
subroutine ss3 ( d )
integer,contiguous:: d(:)
write(1,*) d
end subroutine
end
call s1
print *,'pass'
end
