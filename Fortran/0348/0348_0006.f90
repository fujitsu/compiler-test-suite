subroutine s1(g,x)
type z
 sequence
integer z
end type
logical x
type(z),pointer::g
interface 
 subroutine s2(g)
 type z
 sequence
 integer z
 end type
 type(z),pointer::g
 end subroutine
end interface
g%z = 4
call s2(g)
x=g%z/=14
end subroutine
!
!
!
subroutine s2(g)
type z
 sequence
integer z
end type
type(z),pointer::g
g%z = g%z + 10
end subroutine
!
!
!
type z
 sequence
integer z
end type
logical x
type(z),pointer::g
interface 
 subroutine s1(g,l)
 type z
 sequence
 integer z
 end type
 type(z),pointer::g
 logical l
 end subroutine
end interface
allocate(g)
call s1(g,x)
if(x) then
  print *,"error"
endif
print *,"PASS"
end

