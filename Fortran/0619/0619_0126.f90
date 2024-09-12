subroutine s1
character(*),parameter :: s=min('a','0','C')
character(*),parameter :: t=max('a','0','C')
call x(s,t,'a','0','C')
if (len(s)/=1)print *,101
if (len(t)/=1)print *,102
end
subroutine x(s,t,x1,x2,x3)
character(*)::s,t,x1,x2,x3
if (s/=min(x1,x2,x3))print *,201
if (t/=max(x1,x2,x3))print *,202
end
call s1
print *,'pass'
end
