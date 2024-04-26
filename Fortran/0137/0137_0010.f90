module m1
integer (8)::ip1,ip2
contains
subroutine s1(a,b,n)
integer,optional,dimension(:)::a(:)
integer,optional,dimension(:)::b(:,:,:)
call ss2(a,b,n)
end subroutine
subroutine s2(a,b,n)
integer,optional,dimension(:)::a(:)
integer,optional,dimension(:)::b(:,:,:)
if (ks2(a,b,n)/=1) print *,102
end subroutine
subroutine ss2(x1,x2,n)
integer,optional           ::x1(2),x2(6)
if (n==0) then
 if (present(x1)) print *,611
 if (present(x2)) print *,612
endif
if (n==1) then
 if (.not.present(x1)) print *,2711
 if (loc(x1)==ip1) print *,2714
 if (any(x1/=[1,2])) print *,27014
 if (present(x2)) print *,2512
 x1=[3,4]
endif
if (n==3) then
 if (.not.present(x1)) print *,811
 if (.not.present(x2)) print *,812
 if (loc(x1)==ip1) print *,814
 if (any(x1/=[1,2])) print *,1014
 if (loc(x2)==ip2) print *,824
 if (any([x2]/=[1,2,3,4,5,6])) print *,1024
 x1=[3,4]
 x2=[11,12,13,14,15,16]
end if
if (n==2) then
 if (.not.present(x2)) print *,9711
 if (loc(x2)==ip2) print *,9714
 if (any([x2]/=[1,2,3,4,5,6])) print *,9324
 if (present(x1)) print *,9512
 x2=[11,12,13,14,15,16]
endif
end subroutine
function   ks2(x1,x2,n) result(ks)
integer,optional           ::x1(2),x2(6)
if (n==0) then
 if (present(x1)) print *,511
 if (present(x2)) print *,512
endif
if (n==1) then
 if (.not.present(x1)) print *,3711
 if (loc(x1)==ip1) print *,3714
 if (any(x1/=[1,2])) print *,37014
 if (present(x2)) print *,3512
 x1=[3,4]
endif
if (n==2) then
 if (.not.present(x2)) print *,7711
 if (loc(x2)==ip2) print *,7714
 if (any([x2]/=[1,2,3,4,5,6])) print *,7324
 if (present(x1)) print *,7512
 x2=[11,12,13,14,15,16]
endif
if (n==3) then
 if (.not.present(x1)) print *,711
 if (.not.present(x2)) print *,712
 if (loc(x1)==ip1) print *,714
 if (any(x1/=[1,2])) print *,7014
 if (loc(x2)==ip2) print *,724
 if (any([x2]/=[1,2,3,4,5,6])) print *,7024
 x1=[3,4]
 x2=[11,12,13,14,15,16]
end if
ks=1
end function
end
use m1
integer         ::t1(2,2),k1(2)=[1,2]
integer         ::t2(2,2,1,3),k2(2,1,3)=reshape([1,2,3,4,5,6],[2,1,3])
t2(2,:,:,:)=k2
t1(2,:)=k1
ip1=loc(t1(2,:))
ip2=loc(t2(2,:,:,:))
call s1(n=0)
call s1(t1(2,:),t2(2,:,:,:),3)
 if (any([t2(2,:,:,:)]/=10+[1,2,3,4,5,6])) print *,27024
 if (any(t1(2,:)/=[3,4])) print *,237014
t1(2,:)=k1
call s1(t1(2,:),n=1)
 if (any(t1(2,:)/=[3,4])) print *,337014
t2(2,:,:,:)=k2
call s1(b=t2(2,:,:,:),n=2)
 if (any([t2(2,:,:,:)]/=10+[1,2,3,4,5,6])) print *,37024
print *,'pass'
end

