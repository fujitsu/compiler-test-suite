        real*8,allocatable ,target:: ar(:,:,:)
        real*8,dimension(:,:,:),pointer:: arp
        allocate(ar(1,1,1))
        arp => ar
        end
