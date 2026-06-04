     module mod
       type :: base
          integer(8)::di
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name(:)
       end type ext
       integer,parameter::m=10000
       character(*),parameter::a(2)=repeat('1',m)
     contains
       subroutine s2(var)
         class(base), allocatable, intent(out) :: var(:)
         allocate(var(2))
       end subroutine s2
     end module mod
subroutine ss
     use mod
     class(base), allocatable :: var(:)
         allocate(ext::var(2))
     k=0
     select type(var)
     type is(ext)
       allocate(var(2)%name,source= a)
       write(1001,"(z16.16)") loc(var(2)%name)
       k=1
     end select
     if (k/=1) print *,1002
    call s2(var)
    if (.not.allocated(var)) print *,8292
     k=0
    select type(p=>var)
      type is(base)
       k=1
     end select
     if (k/=1) print *,7002
end 
do n=1,30
call ss
end do
!call chk(1001)
     print *,'sngg756s : pass'
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

