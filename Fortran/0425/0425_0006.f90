subroutine sub(a,i)
type t1
 sequence
 integer,pointer     ::po
end type 
type(t1) :: a(1)
nullify(a(i)%po)
end

type t1
 sequence
 integer,pointer     ::po 
end type
type(t1) :: a(1)
allocate (a(1)%po)
call sub(a,1)
print *,'pass'
end
