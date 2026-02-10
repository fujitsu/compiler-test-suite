interface
subroutine s(j1,k1) 
character,value::j1
character      ::k1
end subroutine 
subroutine u(j1,k1)  bind(c)
character,value::j1
character      ::k1
end subroutine 
subroutine ent2(j1,k1) 
character,value::j1
character      ::k1
end subroutine 
end interface
character::j1,k1
j1='a'
k1='b'
call s(j1,k1)
j1='c'
k1='d'
call u(j1,k1)
j1='e'
k1='f'
call ent2(j1,k1)
print *,'PASS'
end
