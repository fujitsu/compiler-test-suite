module m1
integer (8)::ip1,ip2
contains
subroutine s1(a,b,n)
integer,optional,dimension(:)::a(:)
integer,optional,dimension(:)::b(:,:,:)
call ss2(a,b,n)
if (ks2(a,b,n)/=1) print *,102
end subroutine
subroutine ss2(x1,x2,n)
integer,optional           ::x1(:),x2(:,:,:)
if (n==0) then
 if (present(x1)) print *,611
 if (present(x2)) print *,612
endif
if (n==1) then
 if (.not.present(x1)) print *,2711
 if (loc(x1)/=ip1) print *,2714
 if (any(x1/=[1,2])) print *,27014
 if (present(x2)) print *,2512
endif
if (n==3) then
 if (.not.present(x1)) print *,811
 if (.not.present(x2)) print *,812
 if (loc(x1)/=ip1) print *,814
 if (any(x1/=[1,2])) print *,1014
 if (loc(x2)/=ip2) print *,824
 if (any([x2]/=[1,2,3,4,5,6])) print *,1024
end if
    if (n==2) then
     if (.not.present(x2)) print *,9711
     if (loc(x2)/=ip2) print *,9714
     if (any([x2]/=[1,2,3,4,5,6])) print *,9324
     if (present(x1)) print *,9512
    endif
end subroutine
function   ks2(x1,x2,n) result(ks)
integer,optional           ::x1(:),x2(:,:,:)
if (n==0) then
 if (present(x1)) print *,511
 if (present(x2)) print *,512
endif
if (n==1) then
 if (.not.present(x1)) print *,3711
 if (loc(x1)/=ip1) print *,3714
 if (any(x1/=[1,2])) print *,37014
 if (present(x2)) print *,3512
endif
if (n==2) then
 if (.not.present(x2)) print *,7711
 if (loc(x2)/=ip2) print *,7714
 if (any([x2]/=[1,2,3,4,5,6])) print *,7324
 if (present(x1)) print *,7512
endif
if (n==3) then
 if (.not.present(x1)) print *,711
 if (.not.present(x2)) print *,712
 if (loc(x1)/=ip1) print *,714
 if (any(x1/=[1,2])) print *,7014
 if (loc(x2)/=ip2) print *,724
 if (any([x2]/=[1,2,3,4,5,6])) print *,7024
end if
ks=1
end function
end
use m1
integer,target  ::t1(2)=[1,2]
integer,target  ::t2(2,1,3)=reshape([1,2,3,4,5,6],[2,1,3])
integer,pointer::p1(:),p2(:,:,:)
p1=>t1
p2=>t2
ip1=loc(t1)
ip2=loc(t2)
call s1(n=0)
call s1(p1,p2,3)
call s1(p1,n=1)
call s1(b=p2,n=2)
p1=>null()
p2=>null()
call s1(p1,p2,n=0)
p1=>t1
call s1(p1,p2,n=1)
p1=>null()
p2=>t2
call s1(p1,b=p2,n=2)
p1=>null()
p2=>null()
call s1(b=p2,n=0)
call s1(p1  ,n=0)
print *,'pass'
end

