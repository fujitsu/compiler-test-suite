subroutine s1
type ty
 type (ty),pointer::next
 character(2):: a(2)
end type
type( ty ):: v
allocate(ty :: v%next)
end
call s1
print *,'PASS'
end
