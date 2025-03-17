subroutine s(i2,i3,i4)
integer,allocatable,dimension(:,:,:)::a
integer            ,dimension(2,3,4)::b
integer            ,dimension(i2,i3,i4)::c
integer,pointer    ,dimension(:,:,:)::d
integer,parameter,dimension(2,3,4)::r=reshape((/(j,j=1,24)/),(/2,3,4/))
allocate(a(2,3,4))
allocate(d(2,3,4))
a=r
b=r
c=r
d=r
call sub0(a(1,1,:),1)
call sub(a(1,:,:),1)
call sub1(a(:,:,:),1)
call sub0(b(1,1,:),2)
call sub(b(1,:,:),2)
call sub1(b(:,:,:),2)
call sub0(c(1,1,:),3)
call sub(c(1,:,:),3)
call sub1(c(:,:,:),3)
call sub0(d(1,1,:),4)
call sub(d(1,:,:),4)
call sub1(d(:,:,:),4)
call sub0(c(1,1,1:),3)
call sub(c(1,1:,1:),3)
call sub1(c(:,1:,1:),3)
contains
subroutine sub0(x,i)
integer,dimension(4)::x
if (any(x/=(/1,7,13,19/)))write(6,*) "NG"
select case (i)
case (1)
 if (loc(x)==loc(a))write(6,*) "NG"
case (2)
 if (loc(x)==loc(b))write(6,*) "NG"
case (3)
 if (loc(x)==loc(c))write(6,*) "NG"
case (4)
 if (loc(x)==loc(d))write(6,*) "NG"
end select 
end subroutine
subroutine sub(x,i)
integer,dimension(12)::x
if (any((/x/)/=(/1,3,5,7,9,11,13,15,17,19,21,23/)))write(6,*) "NG"
select case (i)
case (1)
 if (loc(x)==loc(a))write(6,*) 'error-21'
case (2)
 if (loc(x)==loc(b))write(6,*) 'error-2'
case (3)
 if (loc(x)==loc(c))write(6,*) 'error-3'
case (4)
 if (loc(x)==loc(d))write(6,*) 'error-4'
end select 
end subroutine
subroutine sub1(x,i)
integer,dimension(2,3,4)::x
x=r
select case (i)
case (1)
 if (loc(x)/=loc(a))write(6,*) 'error-11'
case (2)
 if (loc(x)/=loc(b))write(6,*) 'error-2'
case (3)
 if (loc(x)/=loc(c))write(6,*) 'error-3'
case (4)
 if (loc(x)/=loc(d))write(6,*) 'error-4'
end select 
end subroutine
subroutine sub2(x,i)
integer,dimension(2,3,4)::x
x=r
select case (i)
case (1)
 if (loc(x)/=loc(a))write(6,*) 'error-31'
case (2)
 if (loc(x)/=loc(b))write(6,*) 'error-2'
case (3)
 if (loc(x)/=loc(c))write(6,*) 'error-3'
case (4)
 if (loc(x)/=loc(d))write(6,*) 'error-4'
end select 
end subroutine
subroutine sub3(x,i)
integer,dimension(2,3,4)::x
x=r
select case (i)
case (1)
 if (loc(x)/=loc(a))write(6,*) 'error-41'
case (2)
 if (loc(x)/=loc(b))write(6,*) 'error-2'
case (3)
 if (loc(x)/=loc(c))write(6,*) 'error-3'
case (4)
 if (loc(x)/=loc(d))write(6,*) 'error-4'
end select 
end subroutine
subroutine clear(x,i)
integer,dimension(:,:,:)::x
x=0
end subroutine
end
call       s(2,3,4)
print *,'pass'
end
