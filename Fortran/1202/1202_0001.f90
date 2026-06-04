     module mod
       type :: base
         integer::dd=2
         contains
           final::fb
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
         contains
           final::fe
       end type ext
       integer,parameter::m=10000
  type xx
     integer(8)::dd
     class(base), allocatable :: var
  end type
  type(xx),allocatable::g
contains
   subroutine fb(d)
    type(base)::d
       if (d%dd  /=2  ) print *,1012
write(113,*)"'fb'"
   end subroutine
   subroutine fe(d)
    type(ext)::d
       if (d%name/='1') print *,1002
write(113,*)"'fe'"
 if (d%name/='1') print *,2002
   end subroutine
     end module mod

     subroutine s1
     use mod
     allocate(g)
     deallocate(g)
     end
     do k=1,10
      call s1
     end do
     print *,'sngg644q : pass'
     end program
     subroutine chk_final(k)
     use mod
     character(m)::r
     rewind (k)
     do n=1,10
       read(k ,*    ,end=100) r
       if (r/='fe')print *,3001,trim(r)
       read(k ,*            ) r
       if (r/='fb')print *,3002,trim(r)
     end do
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
       


