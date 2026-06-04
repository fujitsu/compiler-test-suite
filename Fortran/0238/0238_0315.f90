subroutine s1
logical,parameter::t=.true.
logical(4):: b1=t,b2=t,b3=t
logical(4):: c1(2)=t,c2(2)=t,c3(2)=t
b1=merge(1,0,b2).lt.merge(1,0,b3)
write(10,*)101,b1
b1=b2.neqv.b3
write(10,*)102,b1
c1=merge(1,0,c2).lt.merge(1,0,c3)
write(10,*)201,c1
c1=c2.neqv.c3
write(10,*)202,c1
if (merge(1,0,b2)>=merge(1,0,b3))goto 2
write(10,*)301
2 if (b2.neqv.b3)goto 1
write(10,*)303
1 end
call s1
call chk
print *,'pass'
end
subroutine chk
logical d,e
rewind 10
read(10,*) k,d;if(k/=101)print *,k;if(d)print *,d
read(10,*) k,d;if(k/=102)print *,k;if(d)print *,d
read(10,*) k,d,e;if(k/=201)print *,k;if(d)print *,d;if (e) print *,e
read(10,*) k,d,e;if(k/=202)print *,k;if(d)print *,d ;if (e) print *,e
read(10,*) k;if(k/=303)print *,k
end
