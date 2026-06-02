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
          class(base) ,allocatable::ma
       end type
       type, extends(b) :: e
          class(base),allocatable::qa
     !     class(ext),allocatable::mame
       end type
       integer,parameter::m=1000
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::aa=repeat('2',m)
     contains
       subroutine s2(var)
         class (b), intent(out),optional :: var
          class(base),allocatable::base_x
          class(ext),allocatable::ext_x
      k=0
      select type(var)
       type is(e)
         var%dk=1
         if (allocated(var%ma)) print *,6452
      !   if (allocated(var%mame)) print *,6453
         if (allocated(var%qa  )) print *,6454
         if (.not.same_type_as(var%ma,base_x)) print *,7451
         if (.not.same_type_as(var%qa,base_x)) print *,7452
    !     if (.not.same_type_as(var%mame,ext_x)) print *,7453
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
         allocate(ext::v%ma)
         allocate(ext::v%qa)
     !    allocate(ext::v%mame)
     k=0
     select type(p=>v%ma)
     type is(ext)
       allocate(p%name,source= a)
       allocate(p%na,source= a)
       write(1201,"(z16.16)") loc(p%name)
       write(1202,"(z16.16)") loc(p%na)
       k=1
     end select
     if (k/=1) print *,1002
!     k=0
!     select type(p=>v%mame)
!     type is(ext)
!       allocate(p  %name,source= a)
!       allocate(p  %na,source= a)
!       write(1003,"(z16.16)") loc(p  %name)
!       write(1004,"(z16.16)") loc(p  %na)
!       k=1
!     end select
!     if (k/=1) print *,1002
     end select
    call s2(v)
end
call ss
     print *,'sngg053t : pass'
     end
