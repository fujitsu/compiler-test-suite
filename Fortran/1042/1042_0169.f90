integer,allocatable,dimension(:,:,:)::a
integer,pointer    ,dimension(:,:,:)::c
integer,dimension(2,3,4)::b
type z
integer,allocatable,dimension(:,:,:)::a
integer,pointer    ,dimension(:,:,:)::c
integer,dimension(2,3,4)::b
end type
type(z)::v
integer,parameter,dimension(2,3,4)::r=reshape((/(j,j=1,24)/),(/2,3,4/))
allocate(a(2,3,4))
allocate(c(2,3,4))
allocate(v%a(2,3,4))
allocate(v%c(2,3,4))
call sub0(a(1:2,1,1),1)
call sub0(b(1:2,1,1),2)
call sub0(c(1:2,1,1),3)
call sub0(v%a(1:2,1,1),4)
call sub0(v%b(1:2,1,1),5)
call sub0(v%c(1:2,1,1),16)
if (any(a(:,1,1)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
if (any(b(:,1,1)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
if (any(c(:,1,1)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
if (any(v%a(:,1,1)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
if (any(v%b(:,1,1)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
if (any(v%c(:,1,1)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub(a(:2,:,1),1)
call sub(b(:2,:,1),12)
call sub(c(:2,:,1),3)
call sub(v%a(:2,:,1),4)
call sub(v%b(:2,:,1),15)
call sub(v%c(:2,:,1),6)
if (any(a(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(b(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(c(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(v%a(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(v%b(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(v%c(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub(a(:,:3,1),11)
call sub(b(:,:3,1),12)
call sub(c(:,:3,1),13)
call sub(v%a(:,:3,1),14)
call sub(v%b(:,:3,1),15)
call sub(v%c(:,:3,1),6)
if (any(a(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(b(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(c(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(v%a(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(v%b(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(v%c(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub(a(:2,:3,1),1)
call sub(b(:2,:3,1),12)
call sub(c(:2,:3,1),3)
call sub(v%a(:2,:3,1),4)
call sub(v%b(:2,:3,1),15)
call sub(v%c(:2,:3,1),6)
if (any(a(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(b(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(c(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(v%a(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(v%b(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(v%c(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub1(a(:2,:,:),1)
call sub1(b(:2,:,:),12)
call sub1(c(:2,:,:),3)
call sub1(v%a(:2,:,:),4)
call sub1(v%b(:2,:,:),15)
call sub1(v%c(:2,:,:),6)
if (any(a(:,:,:)/=r))write(6,*) "NG"
if (any(b(:,:,:)/=r))write(6,*) "NG"
if (any(c(:,:,:)/=r))write(6,*) "NG"
if (any(v%a(:,:,:)/=r))write(6,*) "NG"
if (any(v%b(:,:,:)/=r))write(6,*) "NG"
if (any(v%c(:,:,:)/=r))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub1(a(:,:3,:),1)
call sub1(b(:,:3,:),12)
call sub1(c(:,:3,:),3)
call sub1(v%a(:,:3,:),4)
call sub1(v%b(:,:3,:),15)
call sub1(v%c(:,:3,:),6)
if (any(a(:,:,:)/=r))write(6,*) "NG"
if (any(b(:,:,:)/=r))write(6,*) "NG"
if (any(c(:,:,:)/=r))write(6,*) "NG"
if (any(v%a(:,:,:)/=r))write(6,*) "NG"
if (any(v%b(:,:,:)/=r))write(6,*) "NG"
if (any(v%c(:,:,:)/=r))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub1(a(:,:,:4),11)
call sub1(b(:,:,:4),12)
call sub1(c(:,:,:4),13)
call sub1(v%a(:,:,:4),14)
call sub1(v%b(:,:,:4),15)
call sub1(v%c(:,:,:4),6)
if (any(a(:,:,:)/=r))write(6,*) "NG"
if (any(b(:,:,:)/=r))write(6,*) "NG"
if (any(c(:,:,:)/=r))write(6,*) "NG"
if (any(v%a(:,:,:)/=r))write(6,*) "NG"
if (any(v%b(:,:,:)/=r))write(6,*) "NG"
if (any(v%c(:,:,:)/=r))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub1(a(:2,:3,:),1)
call sub1(b(:2,:3,:),12)
call sub1(c(:2,:3,:),3)
call sub1(v%a(:2,:3,:),4)
call sub1(v%b(:2,:3,:),15)
call sub1(v%c(:2,:3,:),6)
if (any(a(:,:,:)/=r))write(6,*) "NG"
if (any(b(:,:,:)/=r))write(6,*) "NG"
if (any(c(:,:,:)/=r))write(6,*) "NG"
if (any(v%a(:,:,:)/=r))write(6,*) "NG"
if (any(v%b(:,:,:)/=r))write(6,*) "NG"
if (any(v%c(:,:,:)/=r))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub1(a(:2,:,:4),1)
call sub1(b(:2,:,:4),12)
call sub1(c(:2,:,:4),3)
call sub1(v%a(:2,:,:4),4)
call sub1(v%b(:2,:,:4),15)
call sub1(v%c(:2,:,:4),6)
if (any(a(:,:,:)/=r))write(6,*) "NG"
if (any(b(:,:,:)/=r))write(6,*) "NG"
if (any(c(:,:,:)/=r))write(6,*) "NG"
if (any(v%a(:,:,:)/=r))write(6,*) "NG"
if (any(v%b(:,:,:)/=r))write(6,*) "NG"
if (any(v%c(:,:,:)/=r))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub1(a(:,:3,:4),1)
call sub1(b(:,:3,:4),12)
call sub1(c(:,:3,:4),3)
call sub1(v%a(:,:3,:4),4)
call sub1(v%b(:,:3,:4),15)
call sub1(v%c(:,:3,:4),6)
if (any(a(:,:,:)/=r))write(6,*) "NG"
if (any(b(:,:,:)/=r))write(6,*) "NG"
if (any(c(:,:,:)/=r))write(6,*) "NG"
if (any(v%a(:,:,:)/=r))write(6,*) "NG"
if (any(v%b(:,:,:)/=r))write(6,*) "NG"
if (any(v%c(:,:,:)/=r))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub1(a(:2,:3,:4),1)
call sub1(b(:2,:3,:4),12)
call sub1(c(:2,:3,:4),3)
call sub1(v%a(:2,:3,:4),4)
call sub1(v%b(:2,:3,:4),15)
call sub1(v%c(:2,:3,:4),6)
if (any(a(:,:,:)/=r))write(6,*) "NG"
if (any(b(:,:,:)/=r))write(6,*) "NG"
if (any(c(:,:,:)/=r))write(6,*) "NG"
if (any(v%a(:,:,:)/=r))write(6,*) "NG"
if (any(v%b(:,:,:)/=r))write(6,*) "NG"
if (any(v%c(:,:,:)/=r))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub2(a,1)
call sub2(b,2)
call sub2(c,3)
call sub2(v%a,4)
call sub2(v%b,5)
call sub2(v%c,6)
if (any(a/=r))write(6,*) "NG"
if (any(b/=r))write(6,*) "NG"
if (any(c/=r))write(6,*) "NG"
if (any(v%a/=r))write(6,*) "NG"
if (any(v%b/=r))write(6,*) "NG"
if (any(v%c/=r))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub3(a(1,1,1),1)
call sub3(b(1,1,1),2)
call sub3(v%a(1,1,1),4)
call sub3(v%b(1,1,1),5)
if (any(a/=r))write(6,*) "NG"
if (any(b/=r))write(6,*) "NG"
if (any(v%a/=r))write(6,*) "NG"
if (any(v%b/=r))write(6,*) "NG"
print *,'pass'
contains
subroutine sub0(x,i)
integer,dimension(2)::x
x=reshape((/1,2/),(/2/))
select case (i)
case (1)
 if (loc(x)/=loc(a))write(6,*) "NG"
case (2)
 if (loc(x)/=loc(b))write(6,*) "NG"
case (3)
 if (loc(x)/=loc(c))write(6,*) "NG"
case (4)
 if (loc(x)/=loc(v%a))write(6,*) "NG"
case (5)
 if (loc(x)/=loc(v%b))write(6,*) "NG"
case (6)
 if (loc(x)/=loc(v%c))write(6,*) "NG"
case (11)
 if (loc(x)==loc(a))write(6,*) "NG"
case (12)
 if (loc(x)==loc(b))write(6,*) "NG"
case (13)
 if (loc(x)==loc(c))write(6,*) "NG"
case (14)
 if (loc(x)==loc(v%a))write(6,*) "NG"
case (15)
 if (loc(x)==loc(v%b))write(6,*) "NG"
case (16)
case default
 write(6,*) "NG"
end select
end subroutine
subroutine sub(x,i)
integer,dimension(2,3)::x
x=reshape((/1,2,3,4,5,6/),(/2,3/))
select case (i)
case (1)
case (11)
 if (loc(x)/=loc(a))write(6,*) "NG"
case (2)
 if (loc(x)==loc(b))write(6,*) "NG"
case (12)
 if (loc(x)/=loc(b))write(6,*) "NG"
case (3)
case (13)
 if (loc(x)/=loc(c))write(6,*) "NG"
case (4)
case (14)
 if (loc(x)/=loc(v%a))write(6,*) "NG"
case (5)
 if (loc(x)==loc(v%b))write(6,*) "NG"
case (15)
 if (loc(x)/=loc(v%b))write(6,*) "NG"
case (6)
case default
 write(6,*) "NG"
end select 
end subroutine
subroutine sub1(x,i)
integer,dimension(2,3,4)::x
x=r
select case (i)
case (1)
case (11)
 if (loc(x)/=loc(a))write(6,*) "NG"
case (2)
case (12)
 if (loc(x)/=loc(b))write(6,*) "NG"
case (3)
case (13)
 if (loc(x)/=loc(c))write(6,*) "NG"
case (4)
case (14)
 if (loc(x)/=loc(v%a))write(6,*) "NG"
case (5)
case (15)
 if (loc(x)/=loc(v%b))write(6,*) "NG"
case (6)
case default
 write(6,*) "NG"
end select 
end subroutine
subroutine sub2(x,i)
integer,dimension(2,3,4)::x
x=r
select case (i)
case (1)
 if (loc(x)/=loc(a))write(6,*) 'error-31'
case (2)
 if (loc(x)/=loc(b))write(6,*) 'error-32'
case (3)
 if (loc(x)/=loc(c))write(6,*) 'error-33'
case (4)
 if (loc(x)/=loc(v%a))write(6,*) 'error-34'
case (5)
 if (loc(x)/=loc(v%b))write(6,*) 'error-35'
case (6)
 if (loc(x)/=loc(v%c))write(6,*) 'error-36'
case default
 write(6,*) "NG"
end select 
end subroutine
subroutine sub3(x,i)
integer,dimension(2,3,4)::x
x=r
select case (i)
case (1)
 if (loc(x)/=loc(a))write(6,*) 'error-41'
case (2)
 if (loc(x)/=loc(b))write(6,*) 'error-42'
case (3)
 if (loc(x)/=loc(c))write(6,*) 'error-43'
case (4)
 if (loc(x)/=loc(v%a))write(6,*) 'error-44'
case (5)
 if (loc(x)/=loc(v%b))write(6,*) 'error-45'
case (6)
 if (loc(x)/=loc(v%c))write(6,*) 'error-46'
case default
 write(6,*) "NG"
end select 
end subroutine
subroutine clear(x,i)
integer,dimension(:,:,:)::x
x=0
end subroutine
end


