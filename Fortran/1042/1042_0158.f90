integer,allocatable,dimension(:,:,:)::a
integer,pointer    ,dimension(:,:,:)::c
integer,dimension(4,3,2)::b
type z
integer,allocatable,dimension(:,:,:)::a
integer,pointer    ,dimension(:,:,:)::c
integer,dimension(4,3,2)::b
end type
type(z)::v
integer,parameter,dimension(4,3,2)::r=reshape((/(j,j=1,24)/),(/4,3,2/))
allocate(a(4,3,2))
allocate(c(4,3,2))
allocate(v%a(4,3,2))
allocate(v%c(4,3,2))
call sub0(a(1,1,1:),1)
call sub0(b(1,1,1:),2)
call sub0(c(1,1,1:),3)
call sub0(v%a(1,1,1:),4)
call sub0(v%b(1,1,1:),5)
call sub0(v%c(1,1,1:),6)
if (any(a(1,1,:)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
if (any(b(1,1,:)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
if (any(c(1,1,:)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
if (any(v%a(1,1,:)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
if (any(v%b(1,1,:)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
if (any(v%c(1,1,:)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub(a(1,1:,:),1)
call sub(b(1,1:,:),2)
call sub(c(1,1:,:),3)
call sub(v%a(1,1:,:),4)
call sub(v%b(1,1:,:),5)
call sub(v%c(1,1:,:),6)
if (any(a(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(b(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(c(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(v%a(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(v%b(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(v%c(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub(a(1,:,1:),1)
call sub(b(1,:,1:),2)
call sub(c(1,:,1:),3)
call sub(v%a(1,:,1:),4)
call sub(v%b(1,:,1:),5)
call sub(v%c(1,:,1:),6)
if (any(a(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(b(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(c(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(v%a(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(v%b(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(v%c(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
call clear(a,1)
call clear(b,2)
call clear(c,3)
call clear(v%a,4)
call clear(v%b,5)
call clear(v%c,6)
call sub(a(1,1:,1:),1)
call sub(b(1,1:,1:),2)
call sub(c(1,1:,1:),3)
call sub(v%a(1,1:,1:),4)
call sub(v%b(1,1:,1:),5)
call sub(v%c(1,1:,1:),6)
if (any(a(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(b(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(c(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(v%a(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(v%b(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(v%c(1,:,:)/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
print *,'pass'
contains
subroutine sub0(x,i)
integer,dimension(2)::x
x=reshape((/1,2/),(/2/))
select case (i)
case (1)
 if (loc(x)==loc(a))write(6,*) 'error-1'
case (2)
 if (loc(x)==loc(b))write(6,*) 'error-2'
case (3)
 if (loc(x)==loc(c))write(6,*) 'error-3'
case (4)
 if (loc(x)==loc(v%a))write(6,*) 'error-4'
case (5)
 if (loc(x)==loc(v%b))write(6,*) 'error-5'
case (6)
 if (loc(x)==loc(v%c))write(6,*) 'error-6'
case default
 write(6,*) "NG"
end select 
end subroutine
subroutine sub(x,i)
integer,dimension(3,2)::x
x=reshape((/1,2,3,4,5,6/),(/3,2/))
select case (i)
case (1)
 if (loc(x)==loc(a))write(6,*) 'error-21'
case (2)
 if (loc(x)==loc(b))write(6,*) 'error-22'
case (3)
 if (loc(x)==loc(c))write(6,*) 'error-23'
case (4)
 if (loc(x)==loc(v%a))write(6,*) 'error-24'
case (5)
 if (loc(x)==loc(v%b))write(6,*) 'error-25'
case (6)
 if (loc(x)==loc(v%c))write(6,*) 'error-26'
case default
 write(6,*) "NG"
end select 
end subroutine
subroutine sub1(x,i)
integer,dimension(4,3,2)::x
x=r
select case (i)
case (1)
 if (loc(x)/=loc(a))write(6,*) 'error-11'
case (2)
 if (loc(x)/=loc(b))write(6,*) 'error-12'
case (3)
 if (loc(x)/=loc(c))write(6,*) 'error-13'
case (4)
 if (loc(x)/=loc(v%a))write(6,*) 'error-14'
case (5)
 if (loc(x)/=loc(v%b))write(6,*) 'error-15'
case (6)
 if (loc(x)/=loc(v%c))write(6,*) 'error-16'
case default
 write(6,*) "NG"
end select 
end subroutine
subroutine sub2(x,i)
integer,dimension(4,3,2)::x
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
integer,dimension(4,3,2)::x
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


