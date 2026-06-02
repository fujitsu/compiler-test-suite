     module mod
       type :: bb
         integer(8)::d2(4)
       end type
       type :: b
         integer(8)::d1(2)
         type(bb),allocatable::n
       end type
       type x
         integer(8)::d
         type (b),allocatable::v
       end type
end module mod

     subroutine s1
     use mod
     type (x) :: xv,yv
      allocate(b::xv%v)
             write (631,"(z16.16)") loc(xv%v   )
      allocate(bb::xv%v%n)
             write (632,"(z16.16)") loc(xv%v%n   )
      yv%d=1
      allocate(b::yv%v)
             write (633,"(z16.16)") loc(yv%v   )
      yv%v%d1(1)=1
      allocate(bb::yv%v%n)
             write (634,"(z16.16)") loc(yv%v%n   )
      yv%v%n%d2(1)=1
      xv=yv
      if (xv%d/=1) print *,1000
      if (xv%v%d1(1)/=1) print *,1001
      if (xv%v%n%d2(1)/=1) print *,1002
     end
use mod
do n=1,20
      call s1
end do
!call chk(11)
!call chk(12)
!call chk(13)
!call chk(14)
     print *,'sngg908q : pass'
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
