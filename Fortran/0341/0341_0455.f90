
program main

 INTEGER*4 X(10000)/10000*1.0/
 INTEGER*4 S(10)/10*0/
 integer :: ans,res
 ans = 210012
 do 10 J=1,10
    do 10 I=1,10000
       S(1)=S(1)+X(I)
10  continue
    print *,S(1)

 do 20 J=1,10
    do 20 I=1,10000
       S(2)=S(2)+X(I)
20  continue

 res = S(1)+S(2)+I+J

 if(res == ans) then
    print *,"ok"
 else
    print *,"ng",res
 end if
end program main
