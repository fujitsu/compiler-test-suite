     module mod
       type :: base
       end type base

       type, extends(base) :: ext
          character(:),allocatable::name(:,:,:)
       end type ext
       integer,parameter::m=10000
     end module mod

     subroutine s1
     use mod
type x
     integer(8)::d1
     class(base), allocatable :: var(:,:,:)
end type
type(x)::w(2,2,2)
     allocate(ext::w(2,2,2)%var(2,2,2))
     select type(p=>w(2,2,2)%var)
     type is(ext)
       allocate(character(m)::p(2,2,2)%name(2,2,2))
       write (77,"('p     :',z16.16)") loc(p)
       write (78,"('p%name:',z16.16)") loc(p(2,2,2)%name)
       write (79,"(z16.16)") loc(p)
       write (80,"(z16.16)") loc(p(2,2,2)%name)
       !!!!!deallocate(p%name)
     end select
     deallocate(w(2,2,2)%var)
     end
     do k=1,10
      call s1
     end do
     !call chk(79)
     !call chk(80)
     print *,'sngg534q : pass'
     end program
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
