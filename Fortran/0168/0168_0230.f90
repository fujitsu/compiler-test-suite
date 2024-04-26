subroutine s1
class(*),pointer::p1
type x
 integer::x1
end type
class(x),pointer:: p2
allocate( x :: p1) 
k=0
select type (p1)
 typeis (x)
  k=1
end select
if (k/=1) print *,101
allocate( x :: p2) 
k=0
select type (p2)
 typeis (x)
  k=1
end select
if (k/=1) print *,102
end
call s1
print *,'pass'
end
