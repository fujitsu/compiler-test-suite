      program main
       type list
        integer :: num
        type (list),pointer :: next
       end type list
       type (list) ,pointer :: root,ptr
       integer :: n,eof
       intrinsic associated
       allocate(root)
        write(37,*) 3
       rewind 37
       read (37,*) root%num
       write(38,*) 8
       write(39,*) 1
       write(40,*) 9
       ptr =>root
       ii=38
       do
         if (ii.eq.41) exit
         rewind ii
         read (ii,*,iostat=eof) n
         ii =ii+1
         if (eof/=0) exit
         allocate(ptr%next)
         ptr=>ptr%next
         ptr%num=n
       end do
       nullify(ptr%next)
       ptr=>root
       do
         write(*,*) ptr%num
         if (.not.associated(ptr%next)) exit
         ptr=>ptr%next
       end do
       print *,'pass'
      end program main
