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
 type(x)   ,allocatable,dimension(:)::a
 integer(8),allocatable,dimension(:)::ss
 integer(2),allocatable,dimension(:)::qq
 integer(4),target,allocatable,dimension(:)::rr
 integer(2),allocatable,dimension(:)::sv

   allocate(a(2:3))
   allocate(sv(2))
   allocate(ss(2))
   allocate(qq(4))
   allocate(rr(6))
   allocate(a(2)%xa(10))
   allocate(a(3)%xa(10))

   sv=(/3,2/)
   ss=(/2,3/)
   qq=(/4,5,6,7/)
   rr=(/6,5,4,3,2,1/)

   do i=2,3
      a(i)=x(ss,rr,(/'ABC','abc'/),qq,null())
   end do 

   deallocate(ss,qq)
   do i=2,3
     if (.not.allocated(a(i)%p1)) write(6,*) "NG"
     if (.not.associated(a(i)%pp)) write(6,*) "NG"
     if (.not.allocated(a(i)%p2)) write(6,*) "NG"
     if (     allocated(a(i)%xa)) write(6,*) "NG"
     if (any(a(i)%p1/=(/2,3/))) write(6,*) "NG"
     if (size(a(i)%p1)/=2) write(6,*) "NG"
     if (any(a(i)%pp/=(/6,5,4,3,2,1/))) write(6,*) "NG"
     if (size(a(i)%pp)/=6) write(6,*) "NG"
     if (any(a(i)%pi/=(/'ABC','abc'/))) write(6,*) "NG"
     if (any(a(i)%p2/=(/4,5,6,7/))) write(6,*) "NG"
     if (size(a(i)%p2)/=4) write(6,*) "NG"
     deallocate(a(i)%p1)
     deallocate(a(i)%p2)
   enddo
   deallocate(rr)

  print *,'pass'
end
