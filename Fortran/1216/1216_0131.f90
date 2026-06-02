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
          class(ext),allocatable::mame
       end type
       integer,parameter::m=1000
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::aa=repeat('2',m)
     contains
       subroutine s2(var)
         class (e),allocatable :: d
         class (*), intent(inout) :: var
       allocate(d)
         d%dk=1
     allocate(ext::d%ma)
     allocate(ext::d%mame)
     select type(p=>d%ma)
     type is(ext)
       allocate(p%name,source= aa)
       allocate(p%na,source=aa)
     end select
     select type(p=>d%mame)
     type is(ext)
       allocate(p%name,source=aa)
       allocate(p%na,source=aa)
     end select
   select type(var)
       type is(e)
         var=d
         if (.not.allocated(var%ma)) print *,6452
         if (.not.allocated(var%mame)) print *,6453
     end select
       end subroutine s2
     end module mod
subroutine ss
     use mod
     class (*   ),allocatable :: v
         allocate(e::v)
    select type(v)
       type is(e)
         allocate(ext::v%ma)
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
  k=0
    if (.not.allocated(v)) print *,8292
      select type(v)
       type is(e)
         if (v%dk/=1) print *,656
         if (.not.allocated(v%ma)) print *,64521
         if (.not.allocated(v%mame)) print *,64531
     k=0
     select type(p=>v%ma)
     type is(ext)
        if (p%na/=aa) print *,5262
        if (p%name/=aa) print *,5263
     k=1
     end select
     if (k/=1) print *,27271
     k=0
     select type(p=>v%mame)
     type is(ext)
        if (p%na/=aa) print *,5362
        if (p%name/=aa) print *,5363
     k=1
     end select
     end select
     if (k/=1) print *,23271
end 
do n=1,30
call ss
end do
!call chk(1001)
!call chk(1002)
!call chk(1003)
!call chk(1004)
     print *,'sngg827s : pass'
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

