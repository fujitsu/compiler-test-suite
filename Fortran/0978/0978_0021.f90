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
call sub0(a(1:,1,1),1)
if (any(a(:,1,1)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
call clear(a,1)
call sub(a(1:,:,1),1)
print *,'pass'
contains
subroutine sub0(x,i)
integer,dimension(2)::x
x=reshape((/1,2/),(/2/))
select case (i)
case (1)
 if (loc(x)/=loc(a))write(6,*) 'error-1'
case (2)
 if (loc(x)/=loc(b))write(6,*) 'error-2'
case (3)
 if (loc(x)/=loc(c))write(6,*) 'error-3'
case (4)
 if (loc(x)/=loc(v%a))write(6,*) 'error-4'
case (5)
 if (loc(x)/=loc(v%b))write(6,*) 'error-5'
case (6)
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
 if (loc(x)==loc(v%c))write(6,*) 'error-16'
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


