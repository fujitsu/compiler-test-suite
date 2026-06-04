     module mod
       type :: b
          integer(8)::du(2)
       end type 
       type, extends(b) :: e
          character(:),allocatable::na
       end type e
       type :: base
          integer(8)::du
          class(b),allocatable::z1
       end type base
       integer,parameter::m=10000
       character(*),parameter::a=repeat('1',m)
     contains
       subroutine s2(var)
         class(*   ), optional,allocatable, intent(out) :: var
   if (present(var)) then
  allocate(base::var)
  end if
       end subroutine s2
     end module mod
subroutine ss
     use mod
     class(*   ), allocatable :: var
         allocate(base::var)
     k=0
     select type(var)
     type is(base)
         allocate(e::var%z1)
     select type(p=>var%z1)
     type is(e)
       allocate(p%na,source= a)
       write(1001,"(z16.16)") loc(p  %na)
       k=1
     end select
     end select
     if (k/=1) print *,1002
    call s2()
    if (.not.allocated(var)) print *,8292
end 
do n=1,30
call ss
end do
!call chk(1001)
     print *,'sngg800s : pass'
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

