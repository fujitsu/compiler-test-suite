 recursive subroutine s
 integer:: a(1:1,1:1,1:1)
 logical:: aa(1:1,1:1,1:1)
 a(1,1,1)=9
 aa(1,1,1)=.true.
 forall (I=1:1)
forall(J=I:1)
 forall (K=1:1,aa(J,1,1))
   a(I,J,K)=2
   aa(I,J,K)=.false.
 end forall
 end forall
end forall
if(a(1,1,1) /= 2) print *,"ng a=",a
if(aa(1,1,1) .neqv. .false.) print *,"ng aa=",aa
end
call s
print *,'pass'
end
recursive subroutine sx
integer k(1000)
write(47,*) 1,size(k)
rewind 47
read(47,*) n1,n2
do n=n1,n2
k(n)=21474800
end do
write(47,*)k(1),k(size(k))
close (47,status = 'delete')
end
