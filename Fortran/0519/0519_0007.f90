character(len=:),allocatable::n3,n4
allocate(n3,source="aa")
call move_alloc(n3,n4)
if(   (n4/="aa")) print *,'err2'
if (len(n4)/=2) print *,202
if (len(n3)/=2) print *,2021
print *,'pass'
end
