 module m
   type ty
     integer :: value
     class(ty),allocatable::node  
   end type
  type tt
     class(ty),allocatable::node1
     integer :: value2
    class(tt),allocatable::node2 
   end type
 integer,parameter::loop=2
 contains
 recursive subroutine alc(t,n)
 TYPE (ty) :: t
   n=n+1
   t%value=n
 if (n<loop) then
   allocate(t%node)
   call alc(t%node,n)
 endif
 end
 recursive subroutine alc_tt(t,n2)
 TYPE (tt) :: t
   n2=n2+1
   t%value2=n2+100
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
 TYPE (tt):: t

 n2=0
 call alc_tt(t,n2)
 end
 call s1
 print*, "sngg034r : pass"
 end
