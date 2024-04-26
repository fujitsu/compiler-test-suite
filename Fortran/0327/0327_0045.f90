character,target :: t
character,pointer :: p
p=>t
t='10'
call sub(t,t)
if(t=='2') then
  print *,'pass'
else
  print *,'ng'
end if
contains
subroutine sub(t1,t2)
character,target :: t1,t2
t1='1'
t2='2'
end subroutine
end
