     module mod
       type :: base
          integer(8)::d0(2)
       end type base

       type, extends(base) :: ext
          integer(8)::d1
          character(:),allocatable::name
       end type ext
       type, extends(ext ) :: ee
          integer(8)::d2(3)
          character(:),allocatable::n
       end type
       integer,parameter::m=1000
contains
     end module mod

     subroutine s1
     use mod
     class(*   ), allocatable :: var
     type (ext ) :: v
     allocate(v%name,source=repeat('1',10000))
     allocate(ee::var)
     select type(p=>var)
       type is(ee)
        allocate(p%name,source=repeat('1',10000))
        allocate(p%n   ,source=repeat('1',10000))

         write (202,"(z16.16)") loc(p      )
         write (203,"(z16.16)") loc(p %name)
         write (204,"(z16.16)") loc(p %n   )
     end select
     var=v
     select type(p=>var)
       type is(ext)
         if (p%name(:1)/='1') print *,202
         write (201,"(z16.16)") loc(p %name)
     end select
     end
     do n=1,10
      call s1
     end do
!     call chk(201)
!     call chk(202)
!     call chk(203)
!     call chk(204)
     print *,'sngg836q : pass'
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
