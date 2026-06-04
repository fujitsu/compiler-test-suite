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
         class (b), intent(out) :: var
          class(base),allocatable::base_x
      k=0
      select type(var)
       type is(b)
         var%dk=1
         if (allocated(var%ma)) print *,6452
         if (.not.same_type_as(var%ma,base_x)) print *,7451
         k=1
       end select
       if (k/=1) print *,3628
       end subroutine s2
     end module mod
subroutine ss
     use mod
     class (b   ), allocatable :: v
         allocate(v)
         allocate(ext::v%ma)
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
    call s2(v)
    if (.not.allocated(v)) print *,8292
     k=0
      select type(v)
       type is(b)
         if (v%dk/=1) print *,656
         if (allocated(v%ma)) print *,64521
       k=1
     end select
     if (k/=1) print *,1022
end 
do n=1,30
call ss
end do
!call chk(1001)
!call chk(1002)
     print *,'sngg770s : pass'
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

