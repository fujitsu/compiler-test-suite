     module mod
       type :: bx
          integer(8)::d3(3)
          character(:),allocatable::n(:,:,:)
contains
           final::fbx
       end type
       type, extends(bx) :: ex
          character(:),allocatable::name(:,:,:)
contains
           final::fex
       end type

       type :: b
          integer(8)::d2(2)
         class(bx), allocatable :: y(:,:,:)
contains
           final::fb 
       end type
       type, extends(b) :: e
         class(bx), allocatable :: yy(:,:,:)
contains
           final::fe
       end type

       type :: base
         integer(8)::d1
         class(b), allocatable :: z(:,:,:)
contains
           final::fbase
       end type
       type, extends(base) :: ext
         class(b), allocatable :: zz(:,:,:)
contains
           final::fext
       end type
       integer,parameter::m=10000
 type x
     integer(8)::dt
     class(ext), allocatable :: var(:,:,:)
   end type
   contains
 subroutine fbx(d)
    type(bx)::d
write(122,*)"'fbx'"
  end
  subroutine fex(d)
    type(ex)::d(:,:,:)
write(122,*)"'fex'"
  end
  subroutine fb(d)
    type(b)::d
write(122,*)"'fb'"
  end
  subroutine fe(d)
    type(e)::d(:,:,:)
write(122,*)"'fe'"
  end
  subroutine fbase(d)
    type(base)::d
write(122,*)"'fbase'"
  end
  subroutine fext (d)
    type(ext)::d(:,:,:)
write(122,*)"'fext'"
  end
     subroutine s1(c)
      class(x)::c
     allocate(ext::c%var(2,2,2))
     write (171,"(z16.16)") loc(c%var)
     select type(p=>c%var)
      type is(ext)
        allocate(e::p(2,2,2)  %z(2,2,2))
        allocate(e::p(2,2,2)  %zz(2,2,2))
     write (172,"(z16.16)") loc(p(2,2,2)%z)
     write (173,"(z16.16)") loc(p(2,2,2)%zz)
        select type(q=> p(2,2,2)%z)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
     write (174,"(z16.16)") loc(q(2,2,2)%y)
     write (175,"(z16.16)") loc(q(2,2,2)%yy)
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (176,"(z16.16)") loc(w(2,2,2)%n)
     write (177,"(z16.16)") loc(w(2,2,2)%name)
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (178,"(z16.16)") loc(w(2,2,2)%n)
     write (179,"(z16.16)") loc(w(2,2,2)%name)
            end select
        end select
        select type(q=> p(2,2,2)%zz)
          type is(e)
            allocate(ex::q(2,2,2)  %y(2,2,2))
            allocate(ex::q(2,2,2)  %yy(2,2,2))
     write (180,"(z16.16)") loc(p(2,2,2)%z)
     write (181,"(z16.16)") loc(p(2,2,2)%zz)
            select type(w=> q(2,2,2)%y)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (182,"(z16.16)") loc(w(2,2,2)%n)
     write (183,"(z16.16)") loc(w(2,2,2)%name)
            end select
            select type(w=> q(2,2,2)%yy)
              type is(ex)
                allocate(character(m)::w(2,2,2)  %n(2,2,2))
                allocate(character(m)::w(2,2,2)  %name(2,2,2))
     write (184,"(z16.16)") loc(w(2,2,2)%n)
     write (185,"(z16.16)") loc(w(2,2,2)%name)
            end select
        end select
     end select

     is=0
     deallocate(c%var,stat=is)
     if (is/=0) print *,10001
     end
    subroutine s0
     class(x),allocatable::c
     allocate(c)
     do k=1,10
      call s1(c)
     end do
!     call chk(11)
!     call chk(12)
!     call chk(13)
!     call chk(14)
!     call chk(15)
!     call chk(16)
!     call chk(17)
!     call chk(18)
!     call chk(19)
!     call chk(20)
!     call chk(21)
!     call chk(22)
!     call chk(23)
!     call chk(24)
!     call chk(25)
call chk_final(122)
     end
     end
use mod
    call s0
     print *,'sngg649q : pass'
     end
   subroutine chk_final(k)
     use mod
     character(m)::r
     rewind (k)
     do n=1,11
       read(k ,*    ,end=100) r
       if (r/='fext')print *,3001,trim(r)
do nn=1,8
    read(k ,*            ) r
       if (r/='fbase')print *,3002,trim(r)
end do
    read(k ,*            ) r
       if (r/='fe')print *,3012,trim(r)
do nn=1,8
    read(k ,*            ) r
       if (r/='fb')print *,3022,trim(r)
end do
    read(k ,*            ) r
       if (r/='fex')print *,3112,trim(r)
do nn=1,8
    read(k ,*            ) r
       if (r/='fbx')print *,3122,trim(r)
end do
    read(k ,*            ) r
       if (r/='fe')print *,3212,trim(r)
do nn=1,8
    read(k ,*            ) r
       if (r/='fb')print *,3222,trim(r)
end do
    read(k ,*            ) r
       if (r/='fex')print *,3312,trim(r)
do nn=1,8
    read(k ,*            ) r
       if (r/='fbx')print *,3322,trim(r)
end do
     end do
print *,7891
  100 continue
     end
     subroutine  chk(k)
     character(16)::n1,n2
     rewind (k)
     read(k ,'(a)') n1
     do 
       read(k ,'(a)',end=100) n2
       if (n1==n2) return
     end do
  100 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do 
       read(k ,'(a)',end=200) n2
       if (n1==n2) return
     end do
  200 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do 
       read(k ,'(a)',end=300) n2
       if (n1==n2) return
     end do
  300 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do 
       read(k ,'(a)',end=400) n2
       if (n1==n2) return
     end do
  400 continue
     rewind (k)
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     read(k ,'(a)') n1
     do 
       read(k ,'(a)',end=500) n2
       if (n1==n2) return
     end do
  500 print *,"Please check UNIT",k
     end
       


