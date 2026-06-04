 module m
   type ty
     integer :: value
     class(* ),allocatable::node(:)
   end type
  type tt
     class(* ),allocatable::node1(:)
     integer :: value2
    class(tt),allocatable::node2(:)
   end type
 integer,parameter::loop=2
 contains
 recursive subroutine alc(t,n)
 TYPE (ty) :: t(:)
   n=n+1
   t%value=n
 if (n<loop) then
   allocate(ty::t(2)%node(2))
 select type(p=>t(2)%node)
   type is(ty)
   call alc(p        ,n)
end select
 endif
 end
 recursive subroutine alc_tt(t,n2)
 TYPE (tt) :: t(:)
   n2=n2+1
   t(2)%value2=n2+100
   n=0
   allocate(ty::t(2)%node1(2))
 select type(p=>t(2)%node1)
   type is(ty)
   call alc(p         ,n)
 end select

 if (n2<loop) then
   allocate(t(2)%node2(2))
   call alc_tt(t(2)%node2,n2)
 endif
 end
 end module

 subroutine s1(k)
 USE m
 TYPE (tt):: t(k)

 n2=0
 call alc_tt(t,n2)
 end
 call s1(2)
 print *,'sngg243r : pass'
 end
