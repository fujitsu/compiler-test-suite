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
       call input('snff90p46.input')
       write(11,'(i7)') 11              
       write(12,'(i7)') 12              
       write(13,'(i7)') 13              
       jj=11
       do 
         write(*,*) 'search  data : code '
         rewind jj
         read (jj,'(i7)',iostat=eof) code
         call search  
         jj=jj+1
         if (jj.eq.14) exit
       end do
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
       subroutine search
          ptr1=>root
          do 
            if (.not.associated(ptr1)) then
               write(*,*) 'not found'
               exit
            else if (ptr1%next%code==code) then
               write (*,*) code,ptr1%next%name
               exit
            end if
            ptr1=>ptr1%next
          end do
       end subroutine search
       end program main
