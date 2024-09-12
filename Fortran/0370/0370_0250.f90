
program xxx
  call scr
  call ary
  call mary
end program xxx

subroutine scr
  character(kind=1),target,save :: c1 = 1_'q'
  character(kind=1,len=3),target,save :: s1 = 1_'pop'
  type ty
     character(kind=1),pointer :: pc => c1
     character(kind=1,len=3),pointer :: ps => s1
  end type ty
  type(ty) :: str
     
  print *, str%pc
  print *, str%ps
end subroutine scr

subroutine ary
  character(kind=1),target,save,dimension(3) :: c1 = (/1_'x', 1_'y', 1_'z'/)
  character(kind=1,len=3),target,dimension(5) :: s1 = (/1_'abc', 1_'def', 1_'ghi', 1_'new', 1_'old' /)
  type ty
     character(kind=1),pointer :: pc1(:) => c1
     character(kind=1),pointer :: pc2    => c1(2)
     character(kind=1),pointer :: pc3(:) => c1(2:3)
     character(kind=1),pointer :: pc4(:) => c1(3:1:-1)
     character(kind=1,len=3),pointer :: ps1(:) => s1
     character(kind=1,len=3),pointer :: ps2    => s1(2)
     character(kind=1,len=3),pointer :: ps3(:) => s1(2:3)
     character(kind=1,len=3),pointer :: ps4(:) => s1(3:1:-1)
  end type ty
  type(ty) :: str
  
  print *, str%pc1
  print *, str%pc2
  print *, str%pc3
  print *, str%pc4
  print *, str%ps1
  print *, str%ps2
  print *, str%ps3
  print *, str%ps4
end subroutine ary

subroutine mary
  character(kind=1),target,save,dimension(3,2) :: c1 = reshape((/1_'x', 1_'y', 1_'z', 1_'a', 1_'b', 1_'c'/),(/3,2/))
  character(kind=1,len=3),target,dimension(3,2) :: s1 = reshape((/1_'abc', 1_'def', 1_'ghi', 1_'new', 1_'old', 1_'pop'/),(/3,2/))
  type ty
     character(kind=1),pointer :: pc1(:,:) => c1
     character(kind=1),pointer :: pc2      => c1(2,2)
     character(kind=1),pointer :: pc3(:,:) => c1(2:3,1:2)
     character(kind=1),pointer :: pc3a(:)  => c1(2:3,2)
     character(kind=1),pointer :: pc3b(:)  => c1(2,1:2)
     character(kind=1),pointer :: pc4(:,:) => c1(3:1:-1,2:1:-1)
     character(kind=1,len=3),pointer :: ps1(:,:) => s1
     character(kind=1,len=3),pointer :: ps2      => s1(2,2)
     character(kind=1,len=3),pointer :: ps3(:,:) => s1(2:3,1:2)
     character(kind=1,len=3),pointer :: ps3a(:)  => s1(2:3,2)
     character(kind=1,len=3),pointer :: ps3b(:)  => s1(2,1:2)
     character(kind=1,len=3),pointer :: ps4(:,:) => s1(3:1:-1,2:1:-1)
  end type ty
  type(ty) :: str
  
  print *, str%pc1
  print *, str%pc2
  print *, str%pc3
  print *, str%pc4
  print *, str%ps1
  print *, str%ps2
  print *, str%ps3
  print *, str%ps3a
  print *, str%ps3b
  print *, str%ps4
end subroutine mary
