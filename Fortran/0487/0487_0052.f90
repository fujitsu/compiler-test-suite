subroutine s
character*2 a*2
a='12'
if (a/='12') print *,101
print *,'pass'
end
character*2 function f()
f='12'
if (f/='12') print *,101
end
print *,'pass'
end
