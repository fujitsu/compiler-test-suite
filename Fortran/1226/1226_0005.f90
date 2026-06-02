     module mod
       type :: base
          integer(8)::di
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer,parameter::m=1000
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::b=repeat('2',m)
     contains
       subroutine s2(var)
         class(base), intent(out) :: var
     class(base), allocatable :: w
         var%di=1
     select type(var)
     type is(ext)
         if (allocated(var%name)) print *,6452
     end select
      k=0
     allocate(w,mold=var)
     select type(w  )
     type is(ext)
         k=1
         if (allocated(w  %name)) print *,64521
     end select
     if (k/=1) print *,5623
       end subroutine s2
     end module mod
subroutine ss
     use mod
     class(base), allocatable :: var
         allocate(ext::var)
     k=0
     select type(var)
     type is(ext)
       allocate(var%name,source= a)
       write(3,"(z16.16)") loc(var%name)
       k=1
     end select
     if (k/=1) print *,1002
    call s2(var)
    if (.not.allocated(var)) print *,8292
     k=0
    select type(p=>var)
      type is(ext)
       k=1
     end select
     if (k/=1) print *,7002
end
do n=1,30
call ss
end do
!call chk(1001)
     print *,'sngg331t : pass'
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
