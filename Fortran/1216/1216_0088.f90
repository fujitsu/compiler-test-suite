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
          class(*   ) ,allocatable::ma(:)
       end type 
       type, extends(b) :: e
          class(*   ),allocatable::qa(:)
          class(*  ),allocatable::mame(:)
       end type
       integer,parameter::m=1000
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::aa=repeat('2',m)
     contains
       subroutine s2(var)
         class (*), intent(out),optional :: var(:)
          class(base),allocatable::base_x
          class(ext),allocatable::ext_x
      k=0
      if (present(var)) then
      select type(var)
       type is(e)
         var(2)%dk=1
         if (allocated(var(2)%ma)) print *,6452
         if (allocated(var(2)%mame)) print *,6453
         if (allocated(var(2)%qa  )) print *,6454
         if (same_type_as(var(2)%ma,base_x)) print *,7451
         if (same_type_as(var(2)%qa,base_x)) print *,7452
         if (same_type_as(var(2)%mame,ext_x)) print *,7453
         k=1
       end select
       if (k/=1) print *,3628
       end if
       end subroutine s2
     end module mod
subroutine ss
     use mod
     class (b   ), allocatable :: v(:)
         allocate(e::v(2))
      select type(v)
       type is(e)
         allocate(ext::v(2)%ma(2))
         allocate(ext::v(2)%qa(2))
         allocate(ext::v(2)%mame(2))
     k=0
     select type(p=>v(2)%ma(2))
     type is(ext)
       allocate(p%name,source= a)
       allocate(p%na,source= a)
       write(1001,"(z16.16)") loc(p%name)
       write(1002,"(z16.16)") loc(p%na)
       k=1
     end select
     if (k/=1) print *,1002
     k=0
     select type(p=>v(2)%mame(2))
     type is(ext)
       allocate(p  %name,source= a)
       allocate(p  %na,source= a)
       write(1003,"(z16.16)") loc(p  %name)
       write(1004,"(z16.16)") loc(p  %na)
       k=1
     end select
     if (k/=1) print *,1002
     end select
    call s2()
    if (.not.allocated(v)) print *,8292
     k=0
      select type(v)
       type is(e)
         if (.not.allocated(v(2)%ma)) print *,64521
         if (.not.allocated(v(2)%mame)) print *,64531
         if (.not.allocated(v(2)%qa  )) print *,64541
       k=1
     end select
     if (k/=1) print *,1022
end 
do n=1,30
call ss
end do
!call chk(1001)
!call chk(1002)
!call chk(1003)
!call chk(1004)
     print *,'sngg784s : pass'
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

