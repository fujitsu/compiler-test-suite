     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       character(10000),parameter:: name_value='1'
     contains
     subroutine ss
     class(base), allocatable :: var
     allocate(ext:: var)
     select type(var)
     type is(ext)
       allocate(var%name,source=name_value)
       write(1,'(z16.16)') loc(var%name)
     end select

     select type(p=>var)
     type is(ext)
        deallocate( var )
     end select
     !deallocate( var )
     end subroutine
     end module
    
     program main
     use mod
     do n=1,30
        call ss
     end do
      !call chk(1)
     print *,'sngg440t : pass'
     end program
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

