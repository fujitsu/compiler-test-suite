module m1
  integer(1) x1
#if defined(__x86_64)
  real( 8),bind(c)::   x2
  real( 8),bind(c)::   x4=1.2345
#else
  real(16),bind(c)::   x2
  real(16),bind(c)::   x4=1.2345
#endif
  integer(1) x3
  integer(1) x5
contains 
subroutine sss5
   if (mod(loc(x2),16)/=0) print *,50005,mod(loc(x2),16)
   if (mod(loc(x4),16)/=0) print *,50006,mod(loc(x3),16)
   if (abs(x4-1.2345)>0.001) print *,50007,x4
end subroutine
end
subroutine sss1
 common /xxx1/ n01,r1
#if defined(__x86_64)
  real( 8):: r1
#else
  real(16):: r1
#endif
  bind(c,name='var01') ::/xxx1/
   if (n01/=1)print *,10001,n01
   if (abs(r1-1.2345)>0.001) print *,10002,r1
#if defined(__x86_64)
   if (mod(loc(r1), 8)/=0) print *,10004,mod(loc(r1),16)
#else
   if (mod(loc(r1),16)/=0) print *,10004,mod(loc(r1),16)
#endif
end
subroutine sss2
 common /xxx2/ n01,n02,r1
#if defined(__x86_64)
  real( 8):: r1
#else
  real(16):: r1
#endif
  bind(c,name='var02') ::/xxx2/
   if (n01/=1)print *,20001,n01
   if (n02/=2)print *,20003,n02
   if (abs(r1-1.2345)>0.001) print *,20002,r1
#if defined(__x86_64)
   if (mod(loc(r1),8 )/=0) print *,20004,mod(loc(r1), 8)
#else
   if (mod(loc(r1),16)/=0) print *,20004,mod(loc(r1),16)
#endif
end
subroutine sss3
 common /xxx3/ n01,r1
  real(8):: r1
  bind(c,name='var03') ::/xxx3/
   if (n01/=1)print *,30001,n01
   if (abs(r1-1.2345)>0.001) print *,30002,r1
   if (mod(loc(r1),8)/=0) print *,30004,mod(loc(r1),8)
end
subroutine sss4
 common /xxx4/ n01,n02,r1
  real(8):: r1
  bind(c,name='var04') ::/xxx4/
   if (n01/=1)print *,40001,n01
   if (n02/=2)print *,40003,n02
   if (abs(r1-1.2345)>0.001) print *,40002,r1
   if (mod(loc(r1),8)/=0) print *,40004,mod(loc(r1),8)
end
block data
#if defined(__x86_64)
real( 8):: r1,r2
#else
real(16):: r1,r2
#endif
real( 8):: r3,r4
common /xxx1/ n11,r1
common /xxx2/ n21,n22,r2
common /xxx3/ n31,r3
common /xxx4/ n41,n42,r4
  bind(c,name='var01') ::/xxx1/
  bind(c,name='var02') ::/xxx2/
  bind(c,name='var03') ::/xxx3/
  bind(c,name='var04') ::/xxx4/
data n11,n21,n31,n41/4*1/
data n22,n42/2*2/
data r1,r2,r3,r4 /4*1.2345/
end
use m1
call sss1
call sss2
call sss3
call sss4
call sss5
print *,'pass'
end

