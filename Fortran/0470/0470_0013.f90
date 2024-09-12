character*4,target :: t(10)='abcd'
character*3,pointer :: p=>t(1)(1:3)
if (p.ne.t(1)(1:3)) print *,'err'
print *,'pass'
end
