integer,parameter::n=4
integer:: a(n,n,n)
integer:: b(n,n,n)
do k = 1,n
do j = 1,n
do i = 1,n
  a(i,j,k) = k*100+j*10+i
  b(i,j,k) = k*100+j*10+i
enddo
enddo
enddo
!$omp parallel workshare
forall (k=2:n)
 forall (j=2:n)
  forall (i=1:n-1)
    a(i,j,1) = a(i+1,j-1,2)
  end forall
 end forall
end forall
!$omp end parallel workshare

 do  j=2,n
  do  i=1,n-1
    b(i,j,1) = b(i+1,j-1,2)
  enddo
 enddo

print *,'pass'
end
