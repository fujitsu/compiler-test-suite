subroutine s1(k1,k2,a,b,n1,n2)
integer:: a(k1,k2),b(k1*k2)

b(:n1*n2)=reshape( a(:n1,:n2)+1 , [n1*n2] )

end
subroutine s2(k1,k2,a,b,n1,n2)
integer:: a(k1,k2),b(k1*k2)

b(:n1*n2)=[ a(:n1,:n2)+1 ] 

end
integer,parameter:: p1=20,p2=30
integer:: a(p1,p2),b(p1*p2)
real:: t1,t2
a=reshape ( [ (k,k=1,p1*p2) ] , [p1,p2] )
write(1,*) p1,p2
rewind 1
read (1,*)nn1,nn2
call cpu_time(t1)
do n1=1,nn1
do n2=1,nn2
call s1(p1,p2,a,b,n1,n2)
end do
end do
call cpu_time(t2)
write(1,*)'s1:', t2-t1

if (   (b(1)/=2)) print *,1001
if (   (b(nn1*nn2)/=p1*p2+1)) print *,1002

call cpu_time(t1)
do n1=1,nn1
do n2=1,nn2
call s2(p1,p2,a,b,n1,n2)
call cpu_time(t2)
end do
end do
write(1,*)'s2:', t2-t1

if (   (b(1)/=2)) print *,2001
if (   (b(nn1*nn2)/=p1*p2+1)) print *,2002
print *,'pass'
end

