complex, pointer,dimension(:,:) :: a
allocate(a(10,10))
a=1
call sub(a%re)
    contains
    subroutine sub(ii)
    real,dimension(10,10) :: ii 
    volatile :: ii
    if(any(ii .ne. 1))print*,"101",ii
    print*,"pass"
    end subroutine
    end

