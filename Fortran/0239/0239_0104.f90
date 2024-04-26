module m1
external a
end 
subroutine a
common /cmn/ c1
c1=c1+1
end
subroutine s1
use m1
common /cmn/ c1
c1=0
call a
if (c1/=1) print *,701
if (abs(sin(.1)-9.98334214E-02)>0.000001) print *,601
associate (s1=> 1 ,m1=> 1, cmn=> 1 , c1=>1 , a=>1 , sin=> [1])
if (s1/=1) print *,101
if (m1/=1) print *,102
if (cmn/=1) print *,103
if (c1/=1) print *,104
if (a/=1) print *,105
if (sin(1)/=1) print *,106
associate (s1=> 2 ,m1=> 2, cmn=> 2 , c1=>2 , a=>2 , sin=> [1,2])
if (s1/=2) print *,201
if (m1/=2) print *,202
if (cmn/=2) print *,203
if (c1/=2) print *,204
if (a/=2) print *,205
if (sin(2)/=2) print *,206
associate (s1=> 3 ,m1=> 3, cmn=> 3 , c1=>3 , a=>3 , sin=> [1,2,3])
if (s1/=3) print *,301
if (m1/=3) print *,303
if (cmn/=3) print *,303
if (c1/=3) print *,304
if (a/=3) print *,305
if (sin(3)/=3) print *,306
end associate
if (s1/=2) print *,401
if (m1/=2) print *,402
if (cmn/=2) print *,403
if (c1/=2) print *,404
if (a/=2) print *,405
if (sin(2)/=2) print *,406
end associate
if (s1/=1) print *,501
if (m1/=1) print *,502
if (cmn/=1) print *,503
if (c1/=1) print *,504
if (a/=1) print *,505
if (sin(1)/=1) print *,506
end associate
call a
if (c1/=2) print *,801
if (abs(sin(.1)-9.98334214E-02)>0.000001) print *,601
end
call s1
print *,'pass'
end


