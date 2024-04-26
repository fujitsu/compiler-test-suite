
PROGRAM main
  real,dimension(100) :: C1
  ans =5050
  DO 10 J=1,2
     DO 10 I=1,100
10      C1(I)=I
  res = sum(C1)

  if(res == ans) then 
     print *,"ok"
  else
     print *,"ng",res
  endif
end program main
