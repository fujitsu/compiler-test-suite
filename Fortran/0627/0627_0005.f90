type :: str
   integer::iii
end type
type(str)::ppp
ppp%iii=1
call sub([str::ppp])
print *,'pass'
contains
subroutine sub(z)
type(str)::z(:)
end subroutine
end
