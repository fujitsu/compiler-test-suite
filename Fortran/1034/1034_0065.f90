 recursive subroutine s
 integer:: a(1:1,1:1,1:1)
 logical:: aa(1:1,1:1,1:1)
 a(1,1,1)=9
 aa(1,1,1)=.true.
 forall (jx=1:1)
forall(jz=jx:1)
 forall (i=1:1,aa(jz,1,1))
   a(i,jx,jz)=-i;
   aa(i,jx,jz)=.false.
 end forall
 end forall
end forall
write(100,*)a,aa
end
call sx
call s
print *,'pass'
end
recursive subroutine sx
integer k(1000)
write(1,*) 1,size(k)
rewind 1
read(1,*) n1,n2
do n=n1,n2
k(n)=21474800
end do
write(1,*)k(1),k(size(k))
end
