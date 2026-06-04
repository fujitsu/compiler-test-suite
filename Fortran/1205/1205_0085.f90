 module m
   type ty
     integer :: value
     type(ty),allocatable::node(:)
   end type
  type tt
     type(ty),allocatable::node1(:)
     real    :: value1
     integer :: value2
    type(tt),allocatable::node2(:)
   end type
 integer,parameter::loop=2
 contains
 recursive subroutine alc(t,n,nn)
 TYPE (ty) :: t(:)
   n=n+1
   if (nn/=0) t(2)%value=n
 if (n<loop) then
   allocate(t(2)%node(2))
   call alc(t(2)%node,n,nn)
 endif
 end
 recursive subroutine alc_tt(t,n2,nn)
 TYPE (tt) :: t(:)
   n2=n2+1
   if (nn/=0) t(2)%value1=n2
   if (nn/=0) t(2)%value2=n2+100
   n=0
   allocate(t(2)%node1(2))
   call alc(t(2)%node1,n,nn)

 if (n2<loop) then
   allocate(t(2)%node2(2))
   call alc_tt(t(2)%node2,n2,nn)
 endif
 end
 end module

 subroutine s1(k)
 USE m
 TYPE (tt):: t(k)

 n2=0
 call alc_tt(t,n2,1)
 !!!print *,'???'
 end
 call s1(2)
 print*, "sngg124r : pass"
 end
