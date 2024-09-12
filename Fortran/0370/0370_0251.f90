
program xxx
  call scr
  call ary
  call mary
end program xxx

subroutine scr
  character(kind=1,len=3),target,save :: s1 = 1_'pop'
  type ty
     character(kind=1,len=:),pointer :: ps => s1
  end type ty
  type(ty) :: str
     
  print *, str%ps
end subroutine scr

subroutine ary
  character(kind=1,len=3),target,dimension(5) :: s1 = (/1_'abc', 1_'def', 1_'ghi', 1_'new', 1_'old' /)
  type ty
     character(kind=1,len=:),pointer :: ps1(:) => s1
     character(kind=1,len=:),pointer :: ps2    => s1(2)
     character(kind=1,len=:),pointer :: ps3(:) => s1(2:3)
     character(kind=1,len=:),pointer :: ps4(:) => s1(3:1:-1)
  end type ty
  type(ty) :: str
  
  print *, str%ps1
  print *, str%ps2
  print *, str%ps3
  print *, str%ps4
end subroutine ary

subroutine mary
  character(kind=1,len=3),target,dimension(3,2) :: s1 = reshape((/1_'abc', 1_'def', 1_'ghi', 1_'new', 1_'old', 1_'pop'/),(/3,2/))
  type ty
     character(kind=1,len=:),pointer :: ps1(:,:) => s1
     character(kind=1,len=:),pointer :: ps2      => s1(2,2)
     character(kind=1,len=:),pointer :: ps3(:,:) => s1(2:3,1:2)
     character(kind=1,len=:),pointer :: ps3a(:)  => s1(2:3,2)
     character(kind=1,len=:),pointer :: ps3b(:)  => s1(2,1:2)
     character(kind=1,len=:),pointer :: ps4(:,:) => s1(3:1:-1,2:1:-1)
  end type ty
  type(ty) :: str
  
  print *, str%ps1
  print *, str%ps2
  print *, str%ps3
  print *, str%ps3a
  print *, str%ps3b
  print *, str%ps4
end subroutine mary
