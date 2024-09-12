character*4,target :: t='abcd'
character*3,pointer :: p=>t(2:4)
if (p.ne.t(2:4)) print *,'err'
print *,'pass'
end
