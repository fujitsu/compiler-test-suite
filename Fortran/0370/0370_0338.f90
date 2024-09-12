
program xxx
  call scr
  call ary
  call mary
end program xxx

subroutine scr
  character(kind=4),target,save :: c1 = 4_'q'
  character(kind=4,len=3),target,save :: s1 = 4_'pop'
  character(kind=4),pointer :: pc
  character(kind=4,len=3),pointer :: ps

  data pc /c1/
  data ps /s1/
  
  print *, pc
  print *, ps
end subroutine scr

subroutine ary
  character(kind=4),target,save,dimension(3) :: c1 = (/4_'x', 4_'y', 4_'z'/)
  character(kind=4),pointer :: pc1(:)
  character(kind=4),pointer :: pc2
  character(kind=4),pointer :: pc3(:)
  character(kind=4),pointer :: pc4(:)
  data pc1 /c1/
  data pc2 /c1(2)/
  data pc3 /c1(2:3)/
  data pc4 /c1(3:1:-1)/
  
  character(kind=4,len=3),target,dimension(5) :: s1 = (/4_'abc', 4_'def', 4_'ghi', 4_'new', 4_'old' /)
  character(kind=4,len=3),pointer :: ps1(:)
  character(kind=4,len=3),pointer :: ps2
  character(kind=4,len=3),pointer :: ps3(:)
  character(kind=4,len=3),pointer :: ps4(:)
  data ps1 /s1/
  data ps2 /s1(2)/
  data ps3 /s1(2:3)/
  data ps4 /s1(3:1:-1)/
  
  print *, pc1
  print *, pc2
  print *, pc3
  print *, pc4

  print *, ps1
  print *, ps2
  print *, ps3
  print *, ps4

end subroutine ary

subroutine mary
  character(kind=4),target,save,dimension(3,2) :: c1 = reshape((/4_'x', 4_'y', 4_'z', 4_'a', 4_'b', 4_'c'/),(/3,2/))
  character(kind=4),pointer :: pc1(:,:)
  character(kind=4),pointer :: pc2
  character(kind=4),pointer :: pc3(:,:)
  character(kind=4),pointer :: pc3a(:)
  character(kind=4),pointer :: pc3b(:)
  character(kind=4),pointer :: pc4(:,:)
  data pc1  /c1/
  data pc2  /c1(2,2)/
  data pc3  /c1(2:3,1:2)/
  data pc3a /c1(2:3,2)/
  data pc3b /c1(2,1:2)/
  data pc4  /c1(3:1:-1,2:1:-1)/
  
  character(kind=4,len=3),target,dimension(3,2) :: s1 = reshape((/4_'abc', 4_'def', 4_'ghi', 4_'new', 4_'old', 4_'pop'/),(/3,2/))
  character(kind=4,len=3),pointer :: ps1(:,:)
  character(kind=4,len=3),pointer :: ps2
  character(kind=4,len=3),pointer :: ps3(:,:)
  character(kind=4,len=3),pointer :: ps3a(:)
  character(kind=4,len=3),pointer :: ps3b(:)
  character(kind=4,len=3),pointer :: ps4(:,:)
  data ps1  /s1/
  data ps2  /s1(2,2)/
  data ps3  /s1(2:3,1:2)/
  data ps3a /s1(2:3,2)/
  data ps3b /s1(2,1:2)/
  data ps4  /s1(3:1:-1,2:1:-1)/
  
  print *, pc1
  print *, pc2
  print *, pc3
  print *, pc3a
  print *, pc3b
  print *, pc4

  print *, ps1
  print *, ps2
  print *, ps3
  print *, ps3a
  print *, ps3b
  print *, ps4

end subroutine mary
