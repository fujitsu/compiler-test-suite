subroutine sub(i)
integer,pointer,save::p
if (i==1) allocate(p)
p=1
if (p/=1) p=2
end
call sub(1)
call sub(0)
print *,'pass'
end
