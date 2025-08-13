subroutine s1(k1,k2,a,b,n1,n2)
integer:: a(k1,k2),b(k1*k2)

b(:n1*n2)=reshape( a(:n1,:n2)+1 , [k1*k2] )

end
subroutine s2(k1,k2,a,b,n1,n2)
integer:: a(k1,k2),b(k1*k2)

b(:n1*n2)=[ a(:n1,:n2)+1 ] 

end
integer,parameter:: p1=200,p2=300
integer:: a(p1,p2),b(p1*p2)
real:: t1,t2
a=reshape ( [ (k,k=1,p1*p2) ] , [p1,p2] )
write(3,*) p1,p2
rewind 3
read (3,*)n1,n2
call cpu_time(t1)
call s1(p1,p2,a,b,n1,n2)
call cpu_time(t2)
write(3,*) 's1:', t2-t1

if (   (b(1)/=2)) print *,1001
if (   (b(n1*n2)/=p1*p2+1)) print *,1002

call cpu_time(t1)
call s2(p1,p2,a,b,n1,n2)
call cpu_time(t2)
write(3,*) 's2:', t2-t1

if (   (b(1)/=2)) print *,2001
if (   (b(n1*n2)/=p1*p2+1)) print *,2002
print *,'pass'
end

