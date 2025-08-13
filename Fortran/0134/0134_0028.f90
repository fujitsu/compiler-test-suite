PROGRAM SAMPLE
  character(:),pointer,dimension(:,:) :: p
  character(1),target,dimension(4,2) :: t='a'
  namelist /nalst/ p
  p=>t
  write(11,nalst)
  print *,'pass'
END PROGRAM SAMPLE
