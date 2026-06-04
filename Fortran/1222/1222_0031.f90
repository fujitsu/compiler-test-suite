     module mod
       type :: base
          integer(8)::di
          character(:),allocatable::na
       end type base
       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       type :: b
          integer(8)::dk
          class(base) ,allocatable::ma(:)
       end type 
       type, extends(b) :: e
          class(base),allocatable::qa(:)
          class(ext),allocatable::mame(:)
       end type
       integer,parameter::m=1000
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::aa=repeat('2',m)
     contains
       subroutine s2(var,n,nn)
         class (*), intent(out) :: var(nn:n+1)
      k=0
      select type(p=>var(2))
       type is(e)
         p%dk=1
         if (allocated(p%ma)) print *,6452
         k=1
       end select
       if (k/=1) print *,3628
       end subroutine s2
     end module mod
     print *,'sngg082t : pass'
     end 

