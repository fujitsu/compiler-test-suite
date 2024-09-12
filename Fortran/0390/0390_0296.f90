 call s1
 print *,'pass'
 end
 subroutine s1
  integer,dimension(:),pointer::p1,p11
allocate(p1(3),source=3)
p11=>p1
   call ss1(p1,p11)
allocate(p1(3),source=3)
p11=>p1
   call ss2(p1,p11)
end
subroutine ss1(p1,p11)
  integer,dimension(3)::p1,p11
if (any(p11/=3)) print *,101,p11
if (any(p1/=3)) print *,102,p1
p11=0
end 
subroutine ss2(p1,p11)
  integer,dimension(3)::p1,p11
if (any(p11/=3)) print *,201,p11
if (any(p1/=3)) print *,202,p1
p1=0
end 
