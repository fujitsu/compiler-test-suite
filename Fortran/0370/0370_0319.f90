
program xxx
  call scr
  call ary
  call mary
end program xxx

subroutine scr
  character(kind=1,len=3),target,save :: s1 = 1_'pop'
  character(kind=1,len=:),pointer :: ps
  data ps /s1/

  print *, ps
end subroutine scr

subroutine ary
  character(kind=1,len=3),target,dimension(5) :: s1 = (/1_'abc', 1_'def', 1_'ghi', 1_'new', 1_'old' /)
  character(kind=1,len=:),pointer :: ps1(:)
  character(kind=1,len=:),pointer :: ps2
  character(kind=1,len=:),pointer :: ps3(:)
  character(kind=1,len=:),pointer :: ps4(:)
  data ps1 /s1/
  data ps2 /s1(2)/
  data ps3 /s1(2:3)/
  data ps4 /s1(3:1:-1)/

  print *, ps1
  print *, ps2
  print *, ps3
  print *, ps4
end subroutine ary

subroutine mary
  character(kind=1,len=3),target,dimension(3,2) :: s1 = reshape((/1_'abc', 1_'def', 1_'ghi', 1_'new', 1_'old', 1_'pop'/),(/3,2/))
  character(kind=1,len=:),pointer :: ps1(:,:)
  character(kind=1,len=:),pointer :: ps2
  character(kind=1,len=:),pointer :: ps3(:,:)
  character(kind=1,len=:),pointer :: ps3a(:)
  character(kind=1,len=:),pointer :: ps3b(:)
  character(kind=1,len=:),pointer :: ps4(:,:)
  data ps1  /s1/
  data ps2  /s1(2,2)/
  data ps3  /s1(2:3,1:2)/
  data ps3a /s1(2:3,2)/
  data ps3b /s1(2,1:2)/
  data ps4  /s1(3:1:-1,2:1:-1)/

  print *, ps1
  print *, ps2
  print *, ps3
  print *, ps3a
  print *, ps3b
  print *, ps4
end subroutine mary
