        real(8), allocatable :: a1(:,:,:),a2(:,:,:),a3(:,:,:)
        allocate(a1(512,512,512)) 
        deallocate(a1)
        allocate(a2(256,256,256)) 
        deallocate(a2)
        allocate(a3(32,32,32)) 
        deallocate(a3)
        print *,'pass'
        end
