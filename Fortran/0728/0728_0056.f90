call s1
 print *,'pass'
 end
  module m1
   logical(8),parameter::t=.true.,f=.false.
   integer(8),parameter::i81=1,i82=2,i84=4,i88=8
   integer(1),dimension(:,:),allocatable::a1
   integer(2),dimension(:,:),allocatable::a2
   integer(4),dimension(:,:),allocatable::a3
   integer(8),dimension(:,:),allocatable::a4
   real   (4),dimension(:,:),allocatable::b1
   real   (8),dimension(:,:),allocatable::b2
   real   (16),dimension(:,:),allocatable::b3
   integer(8),dimension(:),allocatable::d
   integer(8),parameter::r(2,3)=reshape((/11,12,13,12,-19,16/),(/2,3/))
   logical(8),parameter::n(2,3)=reshape((/t,t,t,t,t,t/),(/2,3/))
   contains
   subroutine c(i)
   integer::i(:)
   if (any(i/=(/2,1,2/)))write(6,*) "NG"
   if (any(shape(i)/=(/3/)))write(6,*) "NG"
   end subroutine 
   subroutine e(i)
   integer::i(:)
   if (any(i/=(/2,3/)))write(6,*) "NG"
   if (any(shape(i)/=(/2/)))write(6,*) "NG"
   end subroutine 
  end
  subroutine s1
   use m1
   allocate(a1(2,3),a2(2,3),a3(2,3),a4(2,3))
   allocate(b1(2,3),b2(2,3),b3(2,3))
   allocate(d(2));d=(/1,2/)
   a1=r;a2=r;a3=r;a4=r;b1=r;b2=r;b3=r
   call c(maxloc(a1,d(1)))
   call c(maxloc(a2,d(1)))
   call c(maxloc(a3,d(1)))
   call c(maxloc(a4,d(1)))
   call c(maxloc(b1,d(1)))
   call c(maxloc(b2,d(1)))
   call c(maxloc(b3,d(1)))
   call e(maxloc(a1,d(2)))
   call e(maxloc(a2,d(2)))
   call e(maxloc(a3,d(2)))
   call e(maxloc(a4,d(2)))
   call e(maxloc(b1,d(2)))
   call e(maxloc(b2,d(2)))
   call e(maxloc(b3,d(2)))
   call c(maxloc(a1,d(1),n))
   call c(maxloc(a2,d(1),n))
   call c(maxloc(a3,d(1),n))
   call c(maxloc(a4,d(1),n))
   call c(maxloc(b1,d(1),n))
   call c(maxloc(b2,d(1),n))
   call c(maxloc(b3,d(1),n))
   call e(maxloc(a1,d(2),n))
   call e(maxloc(a2,d(2),n))
   call e(maxloc(a3,d(2),n))
   call e(maxloc(a4,d(2),n))
   call e(maxloc(b1,d(2),n))
   call e(maxloc(b2,d(2),n))
   call e(maxloc(b3,d(2),n))
   end
