interface
subroutine ss(b)
integer,dimension(2,3,*)::b
end subroutine
end interface
integer,dimension(2,3,4)::b
call ss(b)
print *,'pass'
end
subroutine ss(b)
integer,dimension(2,3,*)::b
integer,parameter,dimension(2,3,4)::r=reshape((/(j,j=1,24)/),(/2,3,4/))
type z
integer,allocatable,dimension(:,:,:)::a
integer,pointer    ,dimension(:,:,:)::c
integer,dimension(2,3,4)::b
end type
type(z)::v
integer,allocatable,dimension(:,:,:)::a
integer,pointer    ,dimension(:,:,:)::c

call sub0(b(1:2,1,1),2)
if (any(b(:,1,1)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
call clear(b,1)
call sub(b(:2,:,1),12)
if (any(b(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
call clear(b,2)
call sub(b(:,:3,1),12)
if (any(b(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
call clear(b,2)
call sub(b(:2,:3,1),12)
if (any(b(:,:,1)/=reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
call clear(b,2)
call sub1(b(:,:,:4),12)
if (any(b(:,:,:4)/=r))write(6,*) "NG"
call clear(b,2)
call sub1(b(:2,:,:4),12)
if (any(b(:,:,:4)/=r))write(6,*) "NG"
call clear(b,2)
call sub1(b(:,:3,:4),12)
if (any(b(:,:,:4)/=r))write(6,*) "NG"
call clear(b,2)
call sub1(b(:2,:3,:4),12)
if (any(b(:,:,:4)/=r))write(6,*) "NG"
call clear(b,2)
call sub2(b,2)
if (any(b(:,:,:4)/=r))write(6,*) "NG"
call clear(b,2)
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
 if (loc(x)==loc(v%c))write(6,*) "NG"
case default
 write(6,*) "NG"
end select
end subroutine
subroutine sub(x,i)
integer,dimension(2,3)::x
x=reshape((/1,2,3,4,5,6/),(/2,3/))
select case (i)
case (1)
 if (loc(x)==loc(a))write(6,*) "NG"
case (11)
 if (loc(x)/=loc(a))write(6,*) "NG"
case (2)
 if (loc(x)==loc(b))write(6,*) "NG"
case (12)
 if (loc(x)/=loc(b))write(6,*) "NG"
case (3)
 if (loc(x)==loc(c))write(6,*) "NG"
case (13)
 if (loc(x)/=loc(c))write(6,*) "NG"
case (4)
 if (loc(x)==loc(v%a))write(6,*) "NG"
case (14)
 if (loc(x)/=loc(v%a))write(6,*) "NG"
case (5)
 if (loc(x)==loc(v%b))write(6,*) "NG"
case (15)
 if (loc(x)/=loc(v%b))write(6,*) "NG"
case (6)
 if (loc(x)==loc(v%c))write(6,*) 'error-26'
case default
 write(6,*) "NG"
end select 
end subroutine
subroutine sub1(x,i)
integer,dimension(2,3,4)::x
x=r
select case (i)
case (1)
 if (loc(x)==loc(a))write(6,*) "NG"
case (11)
 if (loc(x)/=loc(a))write(6,*) "NG"
case (2)
 if (loc(x)==loc(b))write(6,*) "NG"
case (12)
 if (loc(x)/=loc(b))write(6,*) "NG"
case (3)
 if (loc(x)==loc(c))write(6,*) "NG"
case (13)
 if (loc(x)/=loc(c))write(6,*) "NG"
case (4)
 if (loc(x)==loc(v%a))write(6,*) "NG"
case (14)
 if (loc(x)/=loc(v%a))write(6,*) "NG"
case (5)
 if (loc(x)==loc(v%b))write(6,*) "NG"
case (15)
 if (loc(x)/=loc(v%b))write(6,*) "NG"
case (6)
 if (loc(x)==loc(v%c))write(6,*) "NG"
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
integer,dimension(2,3,4)::x
x=0
end subroutine
end


