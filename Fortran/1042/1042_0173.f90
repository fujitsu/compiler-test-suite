integer,dimension(2,3,4)::b
type z
integer,allocatable,dimension(:,:,:)::a
integer,pointer    ,dimension(:,:,:)::c
integer,dimension(2,3,4)::b
end type
type(z)::v
integer,parameter,dimension(2,3,4)::r=reshape((/(j,j=1,24)/),(/2,3,4/))
call sub0(b(:2,1,1),2)
call sub0(v%b(:2,1,1),5)
if (any(b(:,1,1)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
if (any(v%b(:,1,1)/=reshape((/1,2/),(/2/))))write(6,*) "NG"
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
 if (loc(x)/=loc(v%c))write(6,*) 'error-6'
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
end
