     module mod
       type :: base
          integer(8)::di
          character(:),allocatable::na
       end type base
       type, extends(base) :: ext
          integer(8)::dix
          !!!character(:),allocatable::name
       end type ext
       type :: b
          integer(8)::dk
       end type 
       type, extends(b) :: e
          class(base),allocatable::qa
       end type
       integer,parameter::m=1000
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::aa=repeat('2',m)
     contains
       subroutine s2(var)
         class (b), intent(out) :: var
          class(base),allocatable::base_x
      k=0
      select type(var)
       type is(e)
         var%dk=1
         if (allocated(var%qa  )) print *,6454
         if (.not.same_type_as(var%qa,base_x)) print *,7452
         k=1
       end select
       if (k/=1) print *,3628
       end subroutine s2
     end module mod
subroutine ss
     use mod
     class (b   ), allocatable :: v
         allocate(e::v)
      select type(v)
       type is(e)
         allocate(ext::v%qa)
     end select
    call s2(v)
end 
call ss
     print *,'sngg055t : pass'
     end 

