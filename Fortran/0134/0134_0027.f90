PROGRAM SAMPLE
  character(:),allocatable,dimension(:,:) :: p
  namelist /namlst/ p
  allocate(character::p(1:4,1:2))
  p(:,:)='1'
  write(10,namlst)
  print *,'pass'
END PROGRAM SAMPLE
