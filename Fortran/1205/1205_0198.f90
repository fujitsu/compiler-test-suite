 module m
   type ty
     integer :: value
     class(* ),allocatable::node(:)
     character(:),allocatable::c1(:)
   end type
   type,extends(ty)::tye
     character(:),allocatable::c1e(:)
   end type
  type tt
     class(* ),allocatable::node1(:)
     integer :: value2
    class(* ),allocatable::node2 (:)
     character(:),allocatable::c2(:)
   end type
   type,extends(tt)::tte
     character(:),allocatable::c2e(:)
   end type
 integer,parameter::loop=2
 character(*),parameter::a1=repeat('a',1000)
 contains
 recursive subroutine alc(t,n)
 TYPE (ty) :: t(:)
   n=n+1
   t(2)%value=n
   allocate(t(2)%c1(2),source=a1)
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
   allocate(t(2)%c2(2),source=a1)
   n=0
   allocate(ty::t(2)%node1(2))
 select type(p=>t(2)%node1)
  type is(ty)
   call alc(p         ,n)
end select

 if (n2<loop) then
   allocate(tt::t(2)%node2(2))
 select type(p=>t(2)%node2)
  type is(tt)
   call alc_tt(p         ,n2)
end select
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
 print *,'sngg245r : pass'
 end
