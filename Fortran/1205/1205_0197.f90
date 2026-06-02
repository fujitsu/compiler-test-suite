 module m
   type ty
     integer :: value
     class(ty),allocatable::node(:)
   end type
  type tt
     class(ty),allocatable::node1(:)
     real    :: value1
     integer :: value2
    class(* ),allocatable::node2(:)
   end type
 integer,parameter::loop=2
 contains
 recursive subroutine alc(t,n)
 class (ty) :: t(:)
   n=n+1
   t%value=n
 if (n<loop) then
   allocate(t(2)%node(2))
   call alc(t(2)%node,n)
 endif
 end
 recursive subroutine alc_tt(t,n2)
 class (tt) :: t(:)
   n2=n2+1
   t(2)%value1=n2
   t(2)%value2=n2+100
   n=0
   allocate(t(2)%node1(2))
   call alc(t(2)%node1,n)

 if (n2<loop) then
   allocate(tt::t(2)%node2(2))
select type(p=>t(2)%node2)
  type is(tt)
   call alc_tt(p         ,n2)
end select
 endif
 end
 end module

 subroutine s1
 USE m
 class (tt),allocatable:: t(:)

 allocate(t(2))
 n2=0
 call alc_tt(t,n2)
 end
 call s1
 print *,'sngg244r : pass'
 end
