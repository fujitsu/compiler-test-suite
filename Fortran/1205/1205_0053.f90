 module m
   type ty
     integer :: value
     class(ty),allocatable::node  
   end type
  type tt
     class(ty),allocatable::node1
     real    :: value1
     integer :: value2
    class(tt),allocatable::node2 
   end type
 integer,parameter::loop=2
 contains
 recursive subroutine alc(t,n)
 class (ty) :: t
   n=n+1
   t%value=n
 if (n<loop) then
   allocate(t%node)
   call alc(t%node,n)
 endif
 end
 recursive subroutine alc_tt(t,n2)
 class (tt) :: t
   n2=n2+1
   t%value1=n2
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
type g
 class (tt),allocatable:: t
end type
type(g)::h(2,2)
k=2

 allocate(h(k,k)%t)
 n2=0
 call alc_tt(h(k,k)%t,n2)
deallocate(h(k,k)%t)
 end
 call s1
 print*, "sngg064r : pass"
 end
