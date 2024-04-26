complex,target :: t
complex,pointer :: p
p=>t
t=10
call sub(t,t)
if(t==(200,200)) then
  print *,'pass'
else
  print *,'ng'
end if
contains
subroutine sub(t1,t2)
complex,target :: t1,t2
t1=(100,100)
t2=(200,200)
end subroutine
end
