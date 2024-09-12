subroutine s1
dimension a(3)
character(kind=1,len=*),parameter::a=['12','34','56']
if (any(a/=[character(kind=1,len=2)::['12','34','56']])) print *,102
end
call s1
print *,'pass'
end
