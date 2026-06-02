module m1
   implicit none
   private
   public ::  gen,e,base
   type :: base
      character(len=:), allocatable :: name
      class(*), allocatable :: next
   end type
   type,extends(base)::e
      character(len=:), allocatable :: name2
   end type
   interface gen
      module procedure :: base_proc
   end interface

contains

pure subroutine base_proc(arg, input_size)
   class(*   ), allocatable, intent(inout) :: arg(:)
   integer, intent(in), optional :: input_size

   class(*   ), allocatable :: local(:)
   integer :: k    , alloc_size, n

   if (allocated(arg)) then
      call move_alloc(arg, local)
   end if

   if (present(input_size)) then
      alloc_size = input_size
   end if

   allocate(e::arg(alloc_size))

   if (allocated(local)) then
      k         = min(size(local, 1), size(arg, 1))
      do n    = 1, k
         select type (local)
           type is(e)
         select type (arg)
           type is(e)
         call move_alloc(local(n)%next, arg(n)%next)
         call move_alloc(local(n)%name, arg(n)%name)
         call move_alloc(local(n)%name2, arg(n)%name2)
         end select
         end select
      end do
    !  deallocate(local)
   end if

end subroutine
end
subroutine s1
use m1
   class(*   ), allocatable :: a(:)
   character(*),parameter::x(*)=[repeat('1',1000), repeat('2',1000),repeat('3',1000)]

   allocate(e::a(3))
   do n=1,3
select type(a)
   class is(base)
     allocate(a(n)%name,source=x(n))
write (800+n,"(z16.16)") loc(a(n)%name)
     select type(a)
       type is(e)
     allocate(a(n)%name2,source=x(n))
write (840+n,"(z16.16)") loc(a(n)%name2)
     end select
     allocate(e   ::a(n)%next)
     select type(p=>a(n)%next)
       class is(e   )
         allocate(p%name,source=x(n))
         allocate(p%name2,source=x(n))
write (810+n,"(z16.16)") loc(p%name)
write (820+n,"(z16.16)") loc(p%name2)
     end select
     end select
   end do
   call gen(a , 5)
   if (size(a)/=5) print *,2930
   do n=1,3
     k=0
select type(a)
   class is(base)
     if (a(n)%name/=x(n)) print *,1001
     select type(p=>a)
       type is(e   )
     if (p(n)%name2/=x(n)) print *,5001
         k=1
     end select
     if (k/=1) print *,8293
     k=0
     select type(p=>a(n)%next)
       type is(e   )
         if (p%name/=x(n)) print *,1002
         if (p%name2/=x(n)) print *,1012
         if (allocated(p%next)) print *,1003
         k=1
     end select
     end select
     if (k/=1) print *,8292
   end do
   do n=4,5
select type(a)
   class is(base)
     if (allocated(a(n)%name)) print *,1101
     if (allocated(a(n)%next)) print *,1201
     k=0
     select type(p=>a)
       type is(e   )
     if (allocated(p(n)%name2)) print *,1101
         k=1
     end select
     end select
     if (k/=1) print *,8592
   end do
end
do k=1,20
call s1
end do
!call chk(101)
!call chk(102)
!call chk(103)
!call chk(201)
!call chk(202)
!call chk(203)
!call chk(301)
!call chk(302)
!call chk(303)
!call chk(401)
!call chk(402)
!call chk(403)
 print *,'sngg298r : pass'
 end
subroutine  chk(k)
     character(16)::x(1000)
     rewind (k)
     kk=1
     do
       read(k ,'(a)',end=100) x(kk)
       kk=kk+1
     end do
  100 continue
     kk=kk-1
     if (kk>1000) stop 999
     do nn=1,kk-1
      do nnn=nn+1,kk
        if (x(nn)==x(nnn)) return
      end do
     end do
  500 print *,"Please check UNIT",k
     end
