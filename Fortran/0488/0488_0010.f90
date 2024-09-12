subroutine s1
integer:: a(5)=[5,1,4,3,2]
if (any(maxloc(a, back=.false.)/= 1)) print *,101,maxloc(a, back=.false.) 
if (any(maxloc(a, back=.true.)/= 1)) print *,102,maxloc(a, back=.true.) 
end
call s1
print *,'pass'
end
