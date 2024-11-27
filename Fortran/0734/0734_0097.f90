 integer b(3)
 logical a(3)/.true.,.false.,.true./
 i=1
 if (i==1)goto 10
 stop
10 where(a)
 b=1
 elsewhere(.not.a)
 b=2
 end where
 if (any(b/=(/1,2,1/)))write(6,*) "NG"
 print *,'pass'
 end
