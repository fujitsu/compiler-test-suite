module m1
integer (8)::ip1,ip2
integer,target  ::t1(2)=[1,2]
integer,target  ::t2(2,1,3)=reshape([1,2,3,4,5,6],[2,1,3])
contains
subroutine s1(n)
select case (n)
 case (10,11,12,13)
   call ss2(af(n),bf(n),n)
   if (ks2(af(n),bf(n),n)/=1) print *,102
 case (0)
   call ss2(            n=n)
   if (ks2(            n=n)/=1) print *,102
 case (1)
   call ss2(x1=af(n),           n=n)
   if (ks2(x1=af(n),            n=n)/=1) print *,102
 case (2)
   call ss2(x2=bf(n),           n=n)
   if (ks2(x2=bf(n),            n=n)/=1) print *,102
 case (3)
   call ss2(x1=af(n),x2=bf(n),           n=n)
   if (ks2(x1=af(n),x2=bf(n),          n=n)/=1) print *,102
end select
end subroutine
function af(n) result(r)
integer,pointer::r(:)
select case(n)
 case (0,2,10,12)
   r=>null()
 case (1,3,11,13)
  r=>t1
  ip1=loc(t1)
end select
end function
function bf(n) result(r)
integer,pointer::r(:,:,:)
select case(n)
 case (0,1,10,11)
   r=>null()
 case (2,3,12,13)
  r=>t2
  ip2=loc(t2)
end select
end function
subroutine ss2(x1,x2,n)
integer,optional,intent(in)           ::x1(2),x2(6)
if (n==0.or.n==10) then
 if (present(x1)) print *,611
 if (present(x2)) print *,612
endif
if (n==1.or.n==11) then
 if (.not.present(x1)) print *,2711
 if (loc(x1)/=ip1) print *,2714
 if (any(x1/=[1,2])) print *,27014
 if (present(x2)) print *,2512
endif
if (n==3.or.n==13) then
 if (.not.present(x1)) print *,811
 if (.not.present(x2)) print *,812
 if (loc(x1)/=ip1) print *,814
 if (any(x1/=[1,2])) print *,1014
 if (loc(x2)/=ip2) print *,824
 if (any([x2]/=[1,2,3,4,5,6])) print *,1024
end if
    if (n==2.or.n==12) then
     if (.not.present(x2)) print *,9711
     if (loc(x2)/=ip2) print *,9714
     if (any([x2]/=[1,2,3,4,5,6])) print *,9324
     if (present(x1)) print *,9512
    endif
end subroutine
function   ks2(x1,x2,n) result(ks)
integer,optional,intent(in)::x1(2),x2(6)
if (n==0.or.n==10) then
 if (present(x1)) print *,511
 if (present(x2)) print *,512
endif
if (n==1.or.n==11) then
 if (.not.present(x1)) print *,3711
 if (loc(x1)/=ip1) print *,3714
 if (any(x1/=[1,2])) print *,37014
 if (present(x2)) print *,3512
endif
    if (n==2.or.n==12) then
 if (.not.present(x2)) print *,7711
 if (loc(x2)/=ip2) print *,7714
 if (any([x2]/=[1,2,3,4,5,6])) print *,7324
 if (present(x1)) print *,7512
endif
if (n==3.or.n==13) then
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
call s1(n=0)
call s1(n=1)
call s1(n=2)
call s1(n=3)
call s1(n=10)
call s1(n=11)
call s1(n=12)
call s1(n=13)
print *,'pass'
end

