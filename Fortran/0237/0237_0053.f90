subroutine s1
character,parameter::c=new_line('x')
character::d,dd
integer,parameter::kk=sum([1,2])
dd='x'
d=new_line(dd)
k=sum([1,2])
if (c/=d)print *,101,c,d
if (k/=kk)print *,102,k,kk
end
call s1
print *,'pass'
end
