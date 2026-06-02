 module m
   type ty
     integer :: value
     class(ty),allocatable::node  
     character(:),allocatable::c1
   end type
   type,extends(ty)::tye
     character(:),allocatable::c1e
   end type
  type tt
     class(ty),allocatable::node1
     integer :: value2
    class(tt),allocatable::node2 
     character(:),allocatable::c2
   end type
   type,extends(tt)::tte
     character(:),allocatable::c2e
   end type
 integer,parameter::loop=2
 character(*),parameter::a1=repeat('a',1000)
 contains
 recursive subroutine alc(t,n)
 TYPE (ty) :: t
   n=n+1
   t%value=n
   allocate(t%c1,source=a1)
 if (n<loop) then
   allocate(t%node)
   call alc(t%node,n)
 endif
 end
 recursive subroutine alc_tt(t,n2)
 TYPE (tt) :: t
   n2=n2+1
   t%value2=n2+100
   allocate(t%c2,source=a1)
   n=0
   allocate(t%node1)
   call alc(t%node1,n)

 if (n2<loop) then
   allocate(t%node2)
   call alc_tt(t%node2,n2)
 endif
 end
 end module

 subroutine s1
 USE m
type g
 TYPE (tt):: t
end type
type(g)::h(2,2)
k=2

 n2=0
 call alc_tt(h(k,k)%t,n2)
 end
 call s1
 print*, "sngg065r : pass"
 end
