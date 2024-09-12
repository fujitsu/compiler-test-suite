#define aaa   111
character(len=6)::c
c='aaa&
   &aaa'
if (c/='aaaaaa')print *,c
print *,'pass'
end
