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
          class(ext),allocatable::mame
       end type
       integer,parameter::m=1000
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::aa=repeat('2',m)
     contains
       subroutine s2(var)
         !class (b), intent(out),optional :: var
         !class (b), intent(out) :: var
         class (b) :: var
          class(base),allocatable::base_x
          class(ext),allocatable::ext_x
     class (b   ), allocatable :: vvv
             allocate(vvv,mold=var)
      k=0
      select type(vvv)
       type is(e)
         if (.not.same_type_as(vvv%qa,base_x)) print *,745299
         k=1
       end select
       if (k/=1) print *,362899
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
         allocate(ext::v%mame)
     k=0
     select type(p=>v%ma)
     type is(ext)
       allocate(p%name,source= a)
       allocate(p%na,source= a)
       write(1001,"(z16.16)") loc(p%name)
       write(1002,"(z16.16)") loc(p%na)
       k=1
     end select
     if (k/=1) print *,1002
     k=0
     select type(p=>v%mame)
     type is(ext)
       allocate(p  %name,source= a)
       allocate(p  %na,source= a)
       write(1003,"(z16.16)") loc(p  %name)
       write(1004,"(z16.16)") loc(p  %na)
       k=1
     end select
     if (k/=1) print *,1002
     end select
    call s2(v)
end
call ss
     print *,'sngg051t : pass'
     end
