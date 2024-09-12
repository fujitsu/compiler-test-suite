      program main
       type list
        integer :: num
        type (list),pointer :: next
       end type list
       type (list) ,pointer :: root,ptr
       integer :: n,eof
       intrinsic associated
       allocate(root)
        write(8,*) 3
       rewind 8
       read (8,*) root%num
       write(10,*) 8
       write(11,*) 1
       write(12,*) 9
       ptr =>root
       ii=10
       do 
         if (ii.eq.13) exit 
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
