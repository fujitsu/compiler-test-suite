      program main
       type list
         integer          :: code
         character(len=10):: name
         type (list),pointer:: next
       end type list
       type (list),pointer :: root,ptr1,ptr2
       integer :: eof
       integer :: code, rcode
       character(len=10) :: name,rname
       call input('snff90p44.input')
       write(11,'(i7,1x,a10)') 29,'johna'
       write(12,'(i7,1x,a10)') 27,'johnb'
       write(13,'(i7,1x,a10)') 25,'johnc'
       write(14,'(i7,1x,a10)') 23,'johnd'
       write(15,'(i7,1x,a10)') 22,'johne'
       write(16,'(i7,1x,a10)') 21,'johnf'
       jj=11
       do 
         write(*,*) 'input data : code name'
         rewind jj
         read (jj,'(i7,1x,a10)',iostat=eof) code,name 
         call insert 
         jj=jj+1
         if (jj.eq.17) exit
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
