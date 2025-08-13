      program main
       type list
         integer          :: code
         character(len=10):: name
         type (list),pointer:: next
       end type list
       type (list),pointer :: root,ptr1,ptr2
       integer :: eof
       integer :: code, rcode
       character(len=10) :: rname
       call input('004.input')
       write(81,'(i7)') 11
       write(82,'(i7)') 12
       write(83,'(i7)') 13
       jj=81
       do
         write(*,*) 'deliete data : code '
         rewind jj
         read (jj,'(i7)',iostat=eof) code
         call delete
         jj=jj+1
         if (jj.eq.84) exit
       end do
       call output('student.ins    ')
       call outlist('student.ins    ')
       print *,'pass'
       contains
       subroutine input(fn)
       character(len=15) ,intent(in) :: fn
       open (3,file=fn)
       allocate(root)
       allocate(root%next)
       ptr1=>root%next
       read (3,'(i7,1x,a10)') rcode,rname
       ptr1%code=rcode
       ptr1%name=rname
       do
         read (3,'(i7,1x,a10)',iostat=eof) rcode,rname
         if (eof/=0) exit
         allocate(ptr1%next)
         ptr1=>ptr1%next
         ptr1%code = rcode
         ptr1%name = rname
       end do
       nullify(ptr1%next)
       END SUBROUTINE input
       subroutine delete
          ptr1=>root
          do
            if (.not.associated(ptr1)) then
               write(*,*) 'not found'
               exit
            else if (ptr1%next%code==code) then
               ptr1%next=>ptr1%next%next
               exit
            end if
            ptr1=>ptr1%next
          end do
       end subroutine delete
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
