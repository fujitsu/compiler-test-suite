  program main
    integer :: aAa(1,1,1,1,1,1,1,1)
    allocatable :: bBb(:,:,:,:,:,:,:,:,:)
    common /com/cCc(1,1,1,1,1,1,1,1)
    dimension :: dDd(1,1,1,1,1,1,1,1)
    pointer :: eEe(:,:,:,:,:,:,:,:,:)
    pointer (fFf,gGg(1,1,1,1,1,1,1,1))
    target :: hHh(1,1,1,1,1,1,1,1)

  end program main
