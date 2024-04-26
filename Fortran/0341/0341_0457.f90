
program main
  REAL*8 C(20)/20*0/
  LOGICAL L1(20)/20*.true./
  real :: res,ans
  C=0
  ans=240

  do 10 J = 1 , 2
     M = J + 10
     do 10 I = 1 , 20
        if( L1(I) ) then
           C(I) = i+M-i
        endif
10 continue

  res = sum(C)
  if(res == ans) then
     print *,"ok"
  else
     print *,"ng",res
  end if
end program main
