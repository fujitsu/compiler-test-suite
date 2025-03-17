integer,dimension(2,3,4)::b
type z
integer,allocatable,dimension(:,:,:)::a
integer,pointer    ,dimension(:,:,:)::c
integer,dimension(2,3,4)::b
end type
type(z)::v
integer,parameter,dimension(2,3,4)::r=reshape((/(j,j=1,24)/),(/2,3,4/))
call sub1(b(1_8:,1_8:,:),12)
if (any(b(:,:,:)/=r))write(6,*) "NG"
call clear(b)
call sub1(b(1:,1:,:),12)
if (any(b(:,:,:)/=r))write(6,*) "NG"
call clear(b)
call sub1(v%b(1:,1:,:),15)
if (any(v%b(:,:,:)/=r))write(6,*) "NG"
call clear(v%b)
call sub1(b(1:2,1:3,:),12)
if (any(b(:,:,:)/=r))write(6,*) "NG"
call clear(b)
call sub1(v%b(1:2,1:3,:),15)
if (any(v%b(:,:,:)/=r))write(6,*) "NG"
call clear(v%b)
call sub1(b(:2,:3,:),12)
if (any(b(:,:,:)/=r))write(6,*) "NG"
call clear(b)
call sub1(v%b(:2,:3,:),15)
if (any(v%b(:,:,:)/=r))write(6,*) "NG"
call clear(v%b)
print *,'pass'
contains
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
 if (loc(x)==loc(v%c))write(6,*) 'error-16'
case default
 write(6,*) "NG"
end select 
end subroutine
subroutine clear(x)
integer,dimension(:,:,:)::x
x=0
end subroutine
end


