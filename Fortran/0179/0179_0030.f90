ifun(i)=sub(i)
if (1.eq.2) j=ifun(j)
print *,'pass'
end
function   sub(int)
procedure() :: int
end
function int()
int=1
end
