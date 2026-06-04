     module mod
       type :: base
          character(:),allocatable::n
       end type
       type, extends(base) :: ext
          character(:),allocatable::na
       end type
       type, extends(ext) :: e
          character(:),allocatable::nam
       end type
       type x
         integer(8)::d
         class(base),allocatable::v
       end type
       integer,parameter::m=10000
       character(*),parameter::a=repeat('1',m)
       character(*),parameter::b=repeat('2',m)
       character(*),parameter::c=repeat('3',m)
contains
     end module mod

     subroutine s1
     use mod
     type (x) :: xv,yv
      allocate(e::xv%v)
      k=0
      select type(p=>xv%v)
        type is(e)
          allocate(p%n,source=a)
             write (611,"(z16.16)") loc(p%n   )
          allocate(p%na,source=a)
             write (612,"(z16.16)") loc(p%na)
          allocate(p%nam,source=a)
             write (613,"(z16.16)") loc(p%nam)
           k=1
      end select
      if (k/=1) print *,73735
      allocate(ext::yv%v)
      k=0
      select type(p=>yv%v)
        type is(ext)
           k=1
          allocate(p%n,source=b)
             write (614,"(z16.16)") loc(p%n   )
          allocate(p%na,source=b)
             write (615,"(z16.16)") loc(p%na  )
      end select
      if (k/=1) print *,73736
      xv=yv
      select type(p=>yv%v)
        type is(ext)
          p%n=c
          p%na=c
      end select
      k=0
      select type(p=>xv%v)
        type is(ext)
           k=1
           if (p%n/=b) print *,89283
           if (p%na/=b) print *,89282
      end select
      if (k/=1) print *,7373
     end
use mod
do n=1,20
      call s1
end do
!call chk(11)
!call chk(12)
!call chk(13)
!call chk(14)
!call chk(15)
     print *,'sngg905q : pass'
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
