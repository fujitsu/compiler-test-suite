type z
 integer(4),allocatable::za(:)
end type
type x
 integer(8),allocatable::p1(:)
 character(3),allocatable::pc(:)
 integer(2),allocatable::p2(:)
 type(z)   ,allocatable::xa(:)
end type
 type(x)   ,allocatable,dimension(:)::a
 type(z)               ,dimension(2)::b
 integer(8),allocatable,dimension(:,:)::ss
 integer(2),allocatable,dimension(:,:)::qq
 integer(2),allocatable,dimension(:)::sv1,sv2,sv3

   allocate(a(2:3))
   allocate(sv1(2))
   allocate(sv2(6))
   allocate(sv3(4))
   allocate(ss(2,2:3))
   allocate(qq(4,2:3))
   allocate(a(2)%xa(10))
   allocate(a(3)%xa(10))

   sv1=(/2,1/)
   sv2=(/6,5,4,3,2,1/)
   sv3=(/4,3,2,1/)
   ss=reshape((/2,3,4,5/),(/2,2/))
   qq=reshape((/4,5,6,7,7,6,5,4/),(/4,2/))

   do i=2,3
      a(i)=x(ss(sv1,i),(/'ABC','abc'/),qq(sv3,i),b)
   end do 

   deallocate(sv1,sv2,sv3,ss,qq)

   do i=2,3
     if (.not.allocated(a(i)%p1)) write(6,*) "NG"
     if (.not.allocated(a(i)%p2)) write(6,*) "NG"
     if (.not.allocated(a(i)%xa)) write(6,*) "NG"
     if (size(a(i)%p1)/=2) write(6,*) "NG"
     if (size(a(i)%p2)/=4) write(6,*) "NG"
   enddo

   if (any(a(2)%p1/=(/3,2/))) write(6,*) "NG"
   if (any(a(2)%pc/=(/'ABC','abc'/))) write(6,*) "NG"
   if (any(a(2)%p2/=(/7,6,5,4/))) write(6,*) "NG"
   if (any(a(3)%p1/=(/5,4/))) write(6,*) "NG"
   if (any(a(3)%pc/=(/'ABC','abc'/))) write(6,*) "NG"
   if (any(a(3)%p2/=(/4,5,6,7/))) write(6,*) "NG"

   do i=2,3
     deallocate(a(i)%p1)
     deallocate(a(i)%p2)
   enddo

  print *,'pass'
end
