logical x
integer,pointer::g
allocate(g)
call s1(g,x)
if(x) then
  print *,"error"
endif
print *,"PASS"
contains

subroutine s1(g,x)
logical x
integer,pointer::g
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
end
