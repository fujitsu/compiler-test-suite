subroutine s1
type x
  integer:: x1
end type
type(x),target     :: t3(4,6)
type(x),pointer    :: v3(:,:)
t3(::2,::2)%x1=10
v3=>t3(::2,::2)
write(1,*) v3
call chk
end
subroutine chk
integer:: z(6)
rewind 1
read(1,*) z
if (any(z/=10)) print *,103
end
call s1
print *,'pass'
end
