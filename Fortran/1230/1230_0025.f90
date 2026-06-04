     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer,parameter::m=10000
     class(*   ), allocatable :: gar,gas,gat,gau
contains

     subroutine s1(war,was,wat,wau)
     class(*   ), allocatable :: var,vas,vat,vau
     class(*   ), allocatable :: war,was,wat,wau
block
     allocate(ext::gar,gas,gat,gau,var,vas,vat,vau,war,was,wat,wau)
     select type(var)
     type is(ext)
       allocate(character(m)::var%name)
       var%name='1'
       write (88,"('var     :',z16.16)") loc(var)
       write (89,"('var%name:',z16.16)") loc(var%name)
       write (90,"(z16.16)") loc(var)
       write (91,"(z16.16)") loc(var%name)
       !!!!!deallocate(var%name)
     end select
     select type(p=>gar)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     select type(p=>gas)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     select type(p=>gat)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     select type(p=>gau)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     select type(p=>war)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     select type(p=>was)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     select type(p=>wat)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     select type(p=>wau)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     select type(p=>vas)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     select type(p=>vat)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     select type(p=>vau)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
     end select
     deallocate(war,was,wat,wau,gar,gas,gat,gau)
     end block
end
     end
     use mod
     class(*   ), allocatable :: war,was,wat,wau
     do k=1,30
      call s1 (war,was,wat,wau)
     end do
     !call chk(90)
     !call chk(91)
     print *,'sngg498t : pass'
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
  500 print *,'Check unit:',k
     end
