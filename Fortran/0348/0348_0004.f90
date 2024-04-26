module m1
type z
integer z
end type
logical x
type(z),pointer::g
end
subroutine s1
use m1
g%z = 4
call s2
x=g%z/=14
end subroutine
subroutine s2
use m1
g%z = g%z + 10
end subroutine
use m1
allocate(g)
call s1
if(x) then
  print *,"error"
endif
print *,"PASS"
end

