 module m
   type ty
     integer :: value
     class(* ),allocatable::node
     character(:),allocatable::c1
   end type
   type,extends(ty)::tye
     character(:),allocatable::c1e
   end type
  type tt
     class(* ),allocatable::node1
     integer :: value2
    class(* ),allocatable::node2
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
   allocate(ty::t%node)
select type(p=>t%node)
 type is(ty)
   call alc(p     ,n)
end select
 endif
 end
 recursive subroutine alc_tt(t,n2)
 TYPE (tt) :: t
   n2=n2+1
   t%value2=n2+100
   allocate(t%c2,source=a1)
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
 TYPE (tt):: t

 n2=0
 call alc_tt(t,n2)
 end
 call s1
 print *,'sngg182r : pass'
 end
