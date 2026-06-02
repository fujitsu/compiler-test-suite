subroutine s1(n)
character(n,1),pointer    ::c1
allocate(c1,source="",stat=k)
if (k==0) print *,301
if(len(c1)/=3) print *,'err1',len(c1)
k=0
allocate(c1,source="1",stat=k)
if (k==0) print *,302
if(len(c1)/=3) print *,'err2',len(c1)
k=0
allocate(c1,source="12",stat=k)
if (k==0) print *,303
if(len(c1)/=3) print *,'err3',len(c1)
k=0
if(len(c1)/=3) print *,'err40',len(c1)
allocate(c1,source="123"        ) 
if (k/=0) print *,304
if(len(c1)/=3) print *,'err4',len(c1)
k=0
allocate(c1,source="1234",stat=k)
if (k==0) print *,305
if(len(c1)/=3) print *,'err5',len(c1)
end
call s1(3)
print *,'pass'
end
