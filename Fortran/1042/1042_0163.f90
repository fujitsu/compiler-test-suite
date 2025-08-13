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
write(4,*) 1
rewind 4
read(4,*) ii
if (ii==1) then
allocate(a(2,3,4))
allocate(c(2,3,4))
allocate(v%a(2,3,4))
allocate(v%c(2,3,4))
else
allocate(a(2,-1:3,4))
allocate(c(2,-1:3,4))
allocate(v%a(2,-1:3,4))
allocate(v%c(2,-1:3,4))
endif
call sub(a(:,1:,1),11)
call sub(b(:,1:,1),12)
call sub(c(:,1:,1),13)
call sub(v%a(:,1:,1),14)
call sub(v%b(:,1:,1),15)
call sub(v%c(:,1:,1),6)
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
call sub1(a(:,:,1:),11)
call sub1(b(:,:,1:),12)
call sub1(c(:,:,1:),13)
call sub1(v%a(:,:,1:),14)
call sub1(v%b(:,:,1:),15)
call sub1(v%c(:,:,1:),6)
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
print *,'pass'
contains
subroutine sub(x,i)
integer,dimension(2,3)::x
x=reshape((/1,2,3,4,5,6/),(/2,3/))
select case (i)
case (1)
 if (loc(x)==loc(a))write(6,*) "NG"
case (2)
 if (loc(x)==loc(b))write(6,*) "NG"
case (12)
 if (loc(x)/=loc(b))write(6,*) "NG"
case (3)
 if (loc(x)==loc(c))write(6,*) "NG"
case (4)
 if (loc(x)==loc(v%a))write(6,*) "NG"
case (5)
 if (loc(x)==loc(v%b))write(6,*) "NG"
case (15)
 if (loc(x)/=loc(v%b))write(6,*) "NG"
case (6)
case (11)
 if (loc(x)/=loc(a))write(6,*) "NG"
case (13)
 if (loc(x)/=loc(c))write(6,*) "NG"
case (14)
 if (loc(x)/=loc(v%a))write(6,*) "NG"
case (16)
 if (loc(x)/=loc(v%c))write(6,*) 'error-26'
case default
 write(6,*) "NG"
end select 
end subroutine
subroutine sub1(x,i)
integer,dimension(2,3,4)::x
x=r
select case (i)
case (11)
 if (loc(x)/=loc(a))write(6,*) "NG"
case (13)
 if (loc(x)/=loc(c))write(6,*) "NG"
case (14)
 if (loc(x)/=loc(v%a))write(6,*) "NG"
case (16)
 if (loc(x)/=loc(v%c))write(6,*) 'error-26'
case (1)
 if (loc(x)==loc(a))write(6,*) "NG"
case (2)
 if (loc(x)==loc(b))write(6,*) "NG"
case (12)
 if (loc(x)/=loc(b))write(6,*) "NG"
case (3)
 if (loc(x)==loc(c))write(6,*) "NG"
case (4)
 if (loc(x)==loc(v%a))write(6,*) "NG"
case (5)
 if (loc(x)==loc(v%b))write(6,*) "NG"
case (15)
 if (loc(x)/=loc(v%b))write(6,*) "NG"
case (6)
case default
 write(6,*) "NG"
end select 
end subroutine
subroutine clear(x,i)
integer,dimension(:,:,:)::x
x=0
end subroutine
end


