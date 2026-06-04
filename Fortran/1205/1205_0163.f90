 module m
   type ty
     integer :: value
     class(* ),allocatable::node
   end type
  type tt
     class(* ),allocatable::node1
     real    :: value1
     integer :: value2
    class(* ),allocatable::node2
   end type
 integer,parameter::loop=2
 contains
 recursive subroutine alc(t,n)
 class (* ) :: t
   n=n+1
select type(p=>t)
  type is(ty)
   p%value=n
 if (n<loop) then
   allocate(ty::p%node)
   call alc(p%node,n)
 endif
end select
 end
 recursive subroutine alc_tt(t,n2)
 class (* ) :: t
select type(p=>t)
  type is(tt)
   n2=n2+1
   p%value1=n2
   p%value2=n2+100
   n=0
   allocate(ty::p%node1)
   call alc(p%node1,n)

 if (n2<loop) then
   allocate(tt::p%node2)
   call alc_tt(p%node2,n2)
 endif
end select
 end
 end module

 subroutine s1
 USE m
type g
 class (* ),allocatable:: t
end type
type(g)::h(2,2)
k=2

 allocate(tt::h(k,k)%t)
 n2=0
 call alc_tt(h(k,k)%t,n2)
deallocate(h(k,k)%t)
 end
 call s1
 print *,'sngg210r : pass'
 end
