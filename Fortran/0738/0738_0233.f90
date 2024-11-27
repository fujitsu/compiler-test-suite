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
 type(z)   ,allocatable,dimension(:)::b
 integer(8),allocatable,dimension(:,:)::ss
 character(3),allocatable,dimension(:,:)::cc
 integer(2),allocatable,dimension(:,:)::qq
 integer(2),allocatable,dimension(:)::sv1,sv2,sv3,sv4

   allocate(a(2:3))
   allocate(sv1(2))
   allocate(sv2(3))
   allocate(sv3(4))
   allocate(sv4(2))
   allocate(ss(2:3,2))
   allocate(cc(3:5,2))
   allocate(qq(4:7,2))
   allocate(b(2:3))

   sv1=(/3,2/)
   sv2=(/5,4,3/)
   sv3=(/7,6,5,4/)
   sv4=(/3,2/)
   ss=reshape((/1,2,3,4/),(/2,2/))
   cc=reshape((/'AAA','BBB','CCC','aaa','bbb','ccc'/),(/3,2/))
   qq=reshape((/2,3,4,5,6,7,8,9/),(/4,2/))

   b(2)=z((/(j,j=1,2)/))
   b(3)=z((/(j,j=3,4)/))

   do i=1,2
     a(i+1)=x(ss(sv1,i),cc(sv2,i),qq(sv3,i),b(sv4))
   end do 

   deallocate(sv1,sv2,sv3,sv4,ss,cc,qq)

   do i=2,3
     if (.not.allocated(a(i)%p1)) write(6,*) "NG"
     if (.not.allocated(a(i)%pc)) write(6,*) "NG"
     if (.not.allocated(a(i)%p2)) write(6,*) "NG"
     if (.not.allocated(a(i)%xa)) write(6,*) "NG"
     if (.not.allocated(a(i)%xa(1)%za)) write(6,*) "NG"
     if (.not.allocated(a(i)%xa(2)%za)) write(6,*) "NG"
     if (size(a(i)%p1)/=2) write(6,*) "NG"
     if (any(lbound(a(i)%p1)/=(/1/))) write(6,*) "NG"
     if (any(ubound(a(i)%p1)/=(/2/))) write(6,*) "NG"
     if (size(a(i)%pc)/=3) write(6,*) "NG"
     if (any(lbound(a(i)%pc)/=(/1/))) write(6,*) "NG"
     if (any(ubound(a(i)%pc)/=(/3/))) write(6,*) "NG"
     if (size(a(i)%p2)/=4) write(6,*) "NG"
     if (any(lbound(a(i)%p2)/=(/1/))) write(6,*) "NG"
     if (any(ubound(a(i)%p2)/=(/4/))) write(6,*) "NG"
     if (size(a(i)%xa)/=2) write(6,*) "NG"
     if (any(lbound(a(i)%xa)/=(/1/))) write(6,*) "NG"
     if (any(ubound(a(i)%xa)/=(/2/))) write(6,*) "NG"
     if (size(a(i)%xa(1)%za)/=2) write(6,*) "NG"
     if (size(a(i)%xa(2)%za)/=2) write(6,*) "NG"
   enddo

   if (any(a(2)%p1/=(/2,1/))) write(6,*) "NG"
   if (any(a(2)%pc/=(/'CCC','BBB','AAA'/))) write(6,*) "NG"
   if (any(a(2)%p2/=(/5,4,3,2/))) write(6,*) "NG"
   if (any(a(2)%xa(1)%za/=(/3,4/))) write(6,*) "NG"
   if (any(a(2)%xa(2)%za/=(/1,2/))) write(6,*) "NG"
   if (any(a(3)%p1/=(/4,3/))) write(6,*) "NG"
   if (any(a(3)%pc/=(/'ccc','bbb','aaa'/))) write(6,*) "NG"
   if (any(a(3)%p2/=(/9,8,7,6/))) write(6,*) "NG"
   if (any(a(3)%xa(1)%za/=(/3,4/))) write(6,*) "NG"
   if (any(a(3)%xa(2)%za/=(/1,2/))) write(6,*) "NG"

   do i=2,3
     deallocate(a(i)%p1)
     deallocate(a(i)%pc)
     deallocate(a(i)%p2)
     deallocate(a(i)%xa(1)%za)
     deallocate(a(i)%xa(2)%za)
     deallocate(a(i)%xa)
   enddo

  print *,'pass'
end
