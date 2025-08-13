subroutine ss(a,b)
integer:: a(20*30),b(20*30)
do m1=1,20*30
b(m1)=  a(m1) 
end do
end
subroutine s0(a,b)
integer:: a(20*30),b(20*30)
b= [ a ]
end
subroutine s1(k1,k2,a,b,n1,n2)
integer:: a(k1,k2),b(k1*k2)
b(:n1*n2)=reshape( a(:n1,:n2)+1 , [n1*n2] )
end
subroutine s2(k1,k2,a,b,n1,n2)
integer:: a(k1,k2),b(k1*k2)
b(:n1*n2)=[ a(:n1,:n2)+1 ] 
end
subroutine s3(k1,k2,a,b,n1,n2,n3)
integer:: a(k1,k2),b(k1*k2)
b(:max(0,n3*n1)+max(0,(n2-(n3+1)+1)*n1))=[ a(:n1,:n3)+1, a(:n1,n3+1:n2)+1 ] 
end

integer,parameter:: p1=20,p2=30
integer:: a(p1,p2),b(p1*p2)
real:: t1,t2
a=reshape ( [ (k,k=1,p1*p2) ] , [p1,p2] )
write(7,*) p1,p2
rewind 7
read (7,*)nn1,nn2

call cpu_time(t1)
do n1=p1-10,nn1
do n2=p2-10,nn2
call ss(a,b)
end do
end do
call cpu_time(t2)
write(7,*)'ss:', t2-t1
if (   (b(1)/=2)) write(7,*)8001
if (   (b(nn1*nn2)/=p1*p2+1)) write(7,*)8002

call cpu_time(t1)
do n1=p1-10,nn1
do n2=p2-10,nn2
call s0(a,b)
end do
end do
call cpu_time(t2)
write(7,*) 's0:', t2-t1
if (   (b(1)/=2)) write(7,*)9001
if (   (b(nn1*nn2)/=p1*p2+1)) write(7,*)9002

call cpu_time(t1)
do n1=1,nn1
do n2=1,nn2
call s1(p1,p2,a,b,n1,n2)
end do
end do
call cpu_time(t2)
write(7,*)'s1:', t2-t1
if (   (b(1)/=2)) print *,1001
if (   (b(nn1*nn2)/=p1*p2+1)) print *,1002

call cpu_time(t1)
do n1=1,nn1
do n2=1,nn2
call s2(p1,p2,a,b,n1,n2)
call cpu_time(t2)
end do
end do
write(7,*)'s2:', t2-t1
if (   (b(1)/=2)) print *,201
if (   (b(nn1*nn2)/=p1*p2+1)) print *,202

call cpu_time(t1)
do n1=1,nn1
do n2=1,nn2
if (n2==1) then
 kn2=0
 kn3=n2
else
 kn2=n2
 kn3=1
endif
call s3(p1,p2,a,b,n1,kn2,kn3)
call cpu_time(t2)
end do
end do
write(7,*)'s3:', t2-t1

if (   (b(1)/=2)) print *,301
if (   (b(nn1*nn2)/=p1*p2+1)) print *,302
print *,'pass'
end

