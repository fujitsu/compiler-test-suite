program main
  character(len=10):: s1
  character(len=10):: s2
  character(len=10):: s3
  character(len=10):: s4
  call sub(s1,s2,s3,s4)
  print *, s1,s2,s3,s4
end

subroutine sub(c1,c2,c3,c4)
  character(len=10):: c1
  character(len=20):: c2
  character(len=5):: c3
  character(*):: c4
end

