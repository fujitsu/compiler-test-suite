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
          class(base),allocatable::base_x
          class(ext),allocatable::ext_x
      k=0
      select type(p=>var(2))
       type is(e)
         p%dk=1
         if (allocated(p%ma)) print *,6452
         if (allocated(p%mame)) print *,6453
         if (allocated(p%qa  )) print *,6454
         if (.not.same_type_as(p%ma,base_x)) print *,7451
         if (.not.same_type_as(p%qa,base_x)) print *,7452
         if (.not.same_type_as(p%mame,ext_x)) print *,7453
         k=1
       end select
       if (k/=1) print *,3628
       end subroutine s2
     end module mod
     print *,'sngg081t : pass'
     end 

