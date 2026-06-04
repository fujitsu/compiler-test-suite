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
     class(*  ), allocatable :: var
     allocate(ext::var)
     select type(p=>var)
     type is(ext)
       allocate(e::p%z)
       select type(q=>p%z)
         type is(e)
           allocate(character(m)::q%n)
           allocate(character(m)::q%name)
           write (422,"(z16.16)") loc(q  )
           write (423,"(z16.16)") loc(q  %name)
           write (424,"(z16.16)") loc(q  %n)
       end select
     end select
     deallocate(var)
     end
     do k=1,10
      call s1
     end do
     !call chk(422)
     !call chk(423)
     !call chk(424)
     print *,'sngg618q : pass'
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
