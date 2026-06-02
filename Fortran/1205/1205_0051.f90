 module m
   type ty
     integer :: value
     type(ty),allocatable::node  !! 1_2
   end type
  type tt
     type(ty),allocatable::node1
     real    :: value1
     integer :: value2
    type(tt),allocatable::node2   !! 1_1
   end type
 integer,parameter::loop=2
 contains
 recursive subroutine alc(t,n,nn)
 TYPE (ty) :: t
   n=n+1
   if (nn/=0) t%value=n
 if (n<loop) then
   allocate(t%node)
   call alc(t%node,n,nn)
 endif
 end
 recursive subroutine alc_tt(t,n2,nn)
 TYPE (tt) :: t
   n2=n2+1
   if (nn/=0) t%value1=n2
   if (nn/=0) t%value2=n2+100
   n=0
   allocate(t%node1)
   call alc(t%node1,n,nn)

 if (n2<loop) then
   allocate(t%node2)
   call alc_tt(t%node2,n2,nn)
 endif
 end
 end module

 subroutine s1
 USE m
type g
 TYPE (tt):: t
end type
class(g),allocatable::h(:,:)
k=2
allocate(h(k,k))

 n2=0
 call alc_tt(h(k,k)%t,n2,1)
 end
 call s1
 print*, "sngg062r : pass"
 end
