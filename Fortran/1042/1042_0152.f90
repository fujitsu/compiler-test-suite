integer,pointer    ,dimension(:,:,:)::c
type z
integer,pointer    ,dimension(:,:,:)::c
end type
type(z)::v
integer,parameter,dimension(2,3,4)::r=reshape((/(j,j=1,24)/),(/2,3,4/))
allocate(c(2,3,4))
allocate(v%c(2,3,4))
call sub3(c(1,1,1),3)
call sub3(v%c(1,1,1),6)
if (c(1,1,1)/=1)write(6,*) "NG"
if (v%c(1,1,1)/=1)write(6,*) "NG"
print *,'pass'
contains
subroutine sub3(x,i)
integer::x
x=1
select case (i)
case (3)
 if (loc(x)/=loc(c))write(6,*) 'error-43'
case (6)
 if (loc(x)/=loc(v%c))write(6,*) 'error-46'
end select 
end subroutine
end


