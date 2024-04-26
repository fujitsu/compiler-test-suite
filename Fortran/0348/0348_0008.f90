subroutine s1(g,x)
logical x
integer,pointer::g
interface 
 subroutine s2(g)
 integer,pointer::g
 end subroutine
end interface
g = 4
call s2(g)
x=g/=14
end subroutine
!
!
!
subroutine s2(g)
integer,pointer::g
g = g + 10
end subroutine
!
!
!
logical x
integer,pointer::g
interface 
 subroutine s1(g,l)
 integer,pointer::g
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

