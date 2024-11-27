type x
 integer,allocatable::p1(:)
 integer,pointer    ::pp(:)
 integer(2)         ::pi(3)
 integer,allocatable::p2(:)
end type
type(x)::p
integer :: pp(2)
integer :: qq(4)
integer,target :: rr(6)
10 pp=(/2,3/)
11 qq=(/4,5,6,7/)
12 rr=(/6,5,4,3,2,1/)
20 do i=1,1
30    p=x(pp,rr,(/3,4,5/),qq)
40 end do 
   if (.not.allocated(p%p1)) write(6,*) "NG"
   if (.not.associated(p%pp)) write(6,*) "NG"
   if (.not.allocated(p%p2)) write(6,*) "NG"
50 if (any(p%p1/=(/2,3/))) write(6,*) "NG"
51 if (any(p%p2/=(/4,5,6,7/))) write(6,*) "NG"
52 if (any(p%pi/=(/3,4,5/))) write(6,*) "NG"
53 if (any(p%pp/=(/6,5,4,3,2,1/))) write(6,*) "NG"
60 print *,'pass'
end
