       real, allocatable :: qp(:,:,:,:),qnop(:,:,:,:)
       ncycle=1000
       do n=1,ncycle
            allocate(qp(10,50,20,100))
            write(8,*) 1
            allocate(qnop(10+5,50,20,100))
            write(8,*) 1
            deallocate(qp)
            deallocate(qnop)
       enddo
       print *,'pass'
       end
