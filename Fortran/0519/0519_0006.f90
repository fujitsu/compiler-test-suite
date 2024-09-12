character(len=:),allocatable::n3(:),n4(:)
allocate(n3(1),source=["aa"])
call move_alloc(n3,n4)
if(any(n4/=["aa"])) print *,'err2'
if (len(n4)/=2) print *,1010
if (lbound(n4,1)/=1) print *,1012
if (ubound(n4,1)/=1) print *,1013
if (size(n4)/=1) print *,1014
print *,'pass'
end
