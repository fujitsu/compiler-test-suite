subroutine s1
implicit none
integer::n1,n2,n3,k,n
integer:: a(2,2,2)=reshape([(n,n=1,8)],[2,2,2])
k=0
!$omp parallel private(k)
k=2
write(1,*) [((( a(n1+k,n2+k,n3+k), a(n1+k,n2+k,n3+k),n1=-1,0),n2=-1,0),n3=-1,0)]
!$omp end parallel
end
call omp_set_num_threads(2)
call s1
call chk
print *,'pass'
end 
subroutine chk
integer a(8),b(8) 
rewind 1
read(1,*) (a(n),b(n),n=1,8)
do n=1,8
 if (a(n)/=n) print *,101
 if (b(n)/=n) print *,102
end do
read(1,*) (a(n),b(n),n=1,8)
do n=1,8
 if (a(n)/=n) print *,201
 if (b(n)/=n) print *,202
end do
end


