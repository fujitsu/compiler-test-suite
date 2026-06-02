character(10)::a,b
character(20)::c
a='xxx'
read(a,*)b
c = a//a
read(c,*)b
if(b/='xxx')print *,101
print *,'pass'
end
