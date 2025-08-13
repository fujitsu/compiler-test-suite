integer(2)::i2
pointer(p,i4)
pointer(p,i2)
real(4)::x=z'8b8b8b8c'
real(4)::t4
real(2)::t2
write(11,'("x:",z8.8)') x
t4=x
write(11,'(z8.8)') t4
p=loc(t4)
write(11,'(z8.8)') i4
t2=x
write(11,'(z8.8)') real(t2,4)
write(11,*)        real(t2,4)
p=loc(t2)
write(11,'(z4.4)') i2
if (t2==0.0_2) then
  write(10,*) 1
endif
if(sign(1.0_4,t4)< 0.0) write(11,*)'minus kind 4'
if(sign(1.0_2,t2)<0.0_2) write(11,*)'minus kind 2'
if(sign(1.0_4,t4)< 0.0) write(10,*)2
if(sign(1.0_2,t2)<0.0_2) write(10,*)3
rewind 10
read(10,*) k;if (k/=1) print *,8001
read(10,*) k;if (k/=2) print *,8002
read(10,*) k;if (k/=3) print *,8003
print *,'pass'

end
