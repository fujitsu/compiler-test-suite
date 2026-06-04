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
 class (ty) :: t
   n=n+1
   t%value=n
 if (n<loop) then
   allocate(ty::t%node)
select type(p=>t%node)
 type is(ty)
   call alc(p     ,n)
end select
 endif
 end
 recursive subroutine alc_tt(t,n2)
 class (tt) :: t
   n2=n2+1
   t%value1=n2
   t%value2=n2+100
   n=0
   allocate(ty::t%node1)
select type(p=>t%node1)
 type is(ty)
   call alc(p      ,n)
end select

 if (n2<loop) then
   allocate(tt::t%node2)
select type(p=>t%node2)
 type is(tt)
   call alc_tt(p      ,n2)
end select
 endif
 end
 end module

 subroutine s1
 USE m
 class (* ),allocatable:: t

 allocate(tt::t)
 n2=0
select type(t)
 type is(tt)
 call alc_tt(t,n2)
end select
 end
 call s1
 print *,'sngg181r : pass'
 end
