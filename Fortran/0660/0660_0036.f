      program main
       type tree
        integer :: node
        type (tree),pointer :: left
        type (tree),pointer :: right
       end type tree
       type (tree) ,pointer :: root
       integer :: data, eof
       nullify(root)
       write (11,*) 99
       write (12,*) 77
       write (13,*) 11
       write (14,*) 33
       write (15,*) 55
       jj=11
       do 
         rewind jj
         read(jj,*,iostat=eof) data
         if (eof/=0) exit
         call store(root,data)
         jj=jj+1
         if (jj.eq.16) exit
       end do
       call output(root) 
       print *,'pass'
       contains
       recursive subroutine store(ptr,data)
        type (tree),pointer :: ptr
        integer,intent(in) ::data
        if (.not.associated(ptr)) then
           allocate(ptr)
           ptr%node=data
           nullify(ptr%left)
           nullify(ptr%right)
        else if (data < ptr%node) then
           call store(ptr%left,data)
        else 
           call store(ptr%right,data)
        end if
       end subroutine store
       recursive subroutine output(ptr)
        type (tree),pointer :: ptr
        if(associated(ptr)) then
          call output(ptr%left)
          write(*,*) ptr%node 
          call output(ptr%right)
        end if
       end subroutine output
      end program main
