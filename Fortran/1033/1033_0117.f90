integer,parameter::n=4
integer,dimension(n,n,n):: a,b,c

do k = 1,n
do j = 1,n
do i = 1,n
  a(i,j,k) = k*100+j*10+i
  b(i,j,k) = k*100+j*10+i
enddo
enddo
enddo
 forall (k=2:n)
  forall (j=1:n-1)
   forall (i=1:n-1)
     a(i,j,k-1) = a(i+1,j+1,k)
   end forall
  end forall
 end forall

 do  k=2,n
  do  j=1,n-1
   do  i=1,n-1
     b(i,j,k-1) = b(i+1,j+1,k)
   enddo
  enddo
 enddo

   forall (i=1:n)
  forall (j=1:n)
 forall (k=1:n)
     c(i,j,k) = a(i,j,k)-b(i,j,k)
 end forall
  end forall
   end forall

 if (any((a-b)/=reshape((/(0,m=1,n*n*n)/),(/n,n,n/)))) write(6,*) "NG" 
 if ( any( (/c/) /= (/(0,m=1,n*n*n)/) ) ) write(6,*) "NG"
print *,'pass'
end
