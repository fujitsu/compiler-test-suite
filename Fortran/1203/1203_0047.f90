     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name
       end type ext
       integer,parameter::m=10000
contains
     end module mod

     subroutine s1
     use mod
  type y
     integer::gy
     class(*   ), allocatable :: var
  end type
  type (y)::h
     allocate(ext::h%var)
     select type(p=>h%var)
     type is(ext)
       allocate(character(m)::p  %name)
       p  %name='1'
       write (1,"('var     :',z16.16)") loc(p  )
       write (2,"('var%name:',z16.16)") loc(p  %name)
       write (11,"(z16.16)") loc(p  )
       write (12,"(z16.16)") loc(p  %name)
       !!!!!deallocate(var%name)
     end select
     !!!deallocate(var)
     end
     do k=1,10
      call s1
     end do
 !   call chk(11)
 !   call chk(12)
     print *,'sngg704q : pass'
     end program
     subroutine final_chk(k)
     character(8)::r
     rewind (k)
       read(k,*) r
     do n=1,10
       read(k,*) r
       if (r/='fe')print *,6001
     end do
       read(k,*,end=100) r
        print *,8082
  100  continue
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
       


