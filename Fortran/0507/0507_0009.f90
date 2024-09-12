character(3)::a(2)/'123','456'/
type x
character(3)::a(2)
end type
type(x)::v
v%a(1)='123'
v%a(2)='456'
call sub01(a(1)(2:))
call sub01(v%a(1)(2:))
print *,'pass'
end
subroutine sub01(c)
character(*),c(*)
if (len(c)/=2) print *,1010
if (c(1)/='23') print *,1001
if (c(2)/='45') print *,1002
end
