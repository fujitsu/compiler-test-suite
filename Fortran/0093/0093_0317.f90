real,allocatable :: rr(:)
complex :: cc(4)
integer :: ii
        cc%re = [1,2,3,4]
        cc%im = [5,6,7,8]
        allocate(rr,source=cc%im,stat=ii)
        if(any(rr .ne. [5,6,7,8])) print*,"121"
        print*,"Pass"
        deallocate(rr)
        allocate(rr,mold=cc%im,stat=ii)
end
