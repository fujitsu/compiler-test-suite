type z
 integer(4),allocatable::za(:)
end type
type x
 integer(8),allocatable::p1(:)
 integer(4),pointer    ::pp(:)
 character(3)            ::pi(2)
 integer(2),allocatable::p2(:)
 type(z)   ,allocatable::xa(:)
end type
 type(x)::p
 integer(8),allocatable,dimension(:)::pp
 integer(2),allocatable,dimension(:)::qq
 integer(4),target,allocatable,dimension(:)::rr

   allocate(pp(2))
   allocate(qq(4))
   allocate(rr(6))
   allocate(p%xa(10))

   pp=(/2,3/)
   qq=(/4,5,6,7/)
   rr=(/6,5,4,3,2,1/)

   do i=10,10
      p=x(pp,rr,(/'ABC','abc'/),qq,null())
   end do 

   if (.not.allocated(p%p1)) write(6,*) "NG"
   if (.not.associated(p%pp)) write(6,*) "NG"
   if (.not.allocated(p%p2)) write(6,*) "NG"
   if (     allocated(p%xa)) write(6,*) "NG"
   if (any(p%p1/=(/2,3/))) write(6,*) "NG"
   if (size(p%p1)/=2) write(6,*) "NG"
   if (any(p%pp/=(/6,5,4,3,2,1/))) write(6,*) "NG"
   if (size(p%pp)/=6) write(6,*) "NG"
   if (any(p%pi/=(/'ABC','abc'/))) write(6,*) "NG"
   if (any(p%p2/=(/4,5,6,7/))) write(6,*) "NG"
   if (size(p%p2)/=4) write(6,*) "NG"

  print *,'pass'
end
