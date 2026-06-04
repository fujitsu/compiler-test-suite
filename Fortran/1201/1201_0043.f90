     module mod
       type :: b
          integer(8)::d2(2)
          character(:),allocatable::n
       end type
       type, extends(b) :: e
          character(:),allocatable::name
       end type

       type :: base
         integer(8)::d1
         class(b), allocatable :: z
       end type
       type, extends(base) :: ext
          integer::d
       end type
       integer,parameter::m=10000
     end 

     subroutine s1
     use mod
     class(ext), allocatable :: var
     is=0
     deallocate(var,stat=is)
     if (is==0) print *,10001
     end
     do k=1,10
      call s1
     end do
!     call chk(11)
!     call chk(12)
!     call chk(13)
     print *,'sngg559q : pass'
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
       


