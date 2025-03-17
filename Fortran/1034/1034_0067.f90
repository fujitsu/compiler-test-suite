 recursive subroutine s
 integer,parameter::n=1000
 integer:: a(1:1,1:n,1:1)
 logical:: aa(1:1,1:n,1:1)
 a(1,:,1)=9
 aa(1,:,1)=.true.
 forall (I=1:1)
forall(J=I:n)
 forall (K=1:1,aa(1,J,1))
   a(I,J,K)=2
   aa(I,J,K)=.false.
 end forall
 end forall
end forall
write(1,*)a,aa
end
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
