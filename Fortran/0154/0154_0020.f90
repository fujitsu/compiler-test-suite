subroutine ss()
type x(k)
  integer,kind::k
  integer::x1(k)
end type
type (x(2)):: a(2)
if (a%k ==1) then
a(1)%x1(2)=2
endif
if (a%k ==1) then
print *,a(1)%x1(2)
endif
end subroutine
subroutine s1
call ss()
end
call s1
print *,'pass'
end
