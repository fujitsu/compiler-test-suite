      program main
       type list
         integer          :: code
         character(len=10):: name
         type (list),pointer:: next
       end type list
       type (list),pointer :: root,ptr1,ptr2
       integer :: eof
       integer :: code
       character(len=10) :: name
       allocate(root)
       allocate(root%next)
       write(*,*) 'input data : code name'
       write(52,'(i7,1x,a10)') 10,'john0'
       rewind 52
       read (52,'(i7,1x,a10)') code,name
       root%next%code=code
       root%next%name=name
       nullify(root%next%next)
       write(61,'(i7,1x,a10)') 19,'john1'
       write(62,'(i7,1x,a10)') 17,'john2'
       write(63,'(i7,1x,a10)') 15,'john3'
       write(64,'(i7,1x,a10)') 13,'john4'
       write(65,'(i7,1x,a10)') 12,'john5'
       write(66,'(i7,1x,a10)') 11,'john6'
       jj=61
       do
         write(*,*) 'input data : code name'
         rewind jj
         read (jj,'(i7,1x,a10)',iostat=eof) code,name
         if (eof/=0) exit
         call insert
         jj=jj+1
         if (jj.eq.67) exit
       end do
       call output('student.list   ')
       call outlist('student.list   ')
       print *,'pass'
       contains
       subroutine insert
          ptr1=>root
          ptr2=>ptr1%next
          do
            if (.not.associated(ptr2)) exit
            if (code < ptr2%code) exit
            ptr1=>ptr2
            ptr2=>ptr1%next
          end do
          allocate(ptr1%next)
          ptr1=>ptr1%next
          ptr1%code=code
          ptr1%name=name
          ptr1%next=>ptr2
       end subroutine insert
       subroutine output(fn)
       character (len=15),intent(in) :: fn
       open (22,file=fn)
       ptr1=>root%next
       do
         if (.not.associated(ptr1)) exit
         write (22,'(i7,1x,a10)') ptr1%code,ptr1%name
         ptr1=>ptr1%next
       end do
       close (22)
       end subroutine output
       subroutine outlist(fn)
       character (len=15),intent(in) :: fn
       integer ieof,icode
       character (len=10) iname
       open (9,file=fn)
       print *,'code       name '
       do
         read  (9,'(i7,1x,a10)',iostat=ieof) icode,iname
         if (ieof /= 0) exit
         write  (*,'(i7,1x,a10)',iostat=ieof) icode,iname
       end do
       close (9, status='delete')
       end subroutine outlist
       end program main
