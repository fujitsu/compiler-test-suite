integer,parameter:: n=5
integer a(n,n,n,n,n,n,n)  
integer b(n,n,n,n,n,n,n)  
do i7=1,n
do i6=1,n
do i5=1,n
do i4=1,n
do i3=1,n
do i2=1,n
do i1=1,n
a(i1,i2,i3,i4,i5,i6,i7) =i1+i2*10+i3*100+i4*1000+i5*10000+i6*100000+i7*1000000
b(i1,i2,i3,i4,i5,i6,i7) =i1+i2*10+i3*100+i4*1000+i5*10000+i6*100000+i7*1000000
enddo
enddo
enddo
enddo
enddo
enddo
enddo

!$omp parallel workshare
forall (i4=1:n)
forall (i7=2:n)
forall (i5=2:n)
forall (i1=n:2:-1)
forall (i2=1:n-1)
forall (i6=1:n-1)
forall (i3=1:n-1)
  a(i1,i2,i3,i4,i5-1,n-i6+1,i7-1) = a(i1-1,i2+1,i3+1,i4,i5,n-i6,i7)
end forall
end forall
end forall
end forall
end forall
end forall
end forall
!$omp end parallel workshare

do      i4=1,n 
do      i7=2,n 
do      i5=2,n 
do      i1=n,2,-1
do      i2=1,n-1 
do      i6=1,n-1 
do      i3=1,n-1 
  b(i1,i2,i3,i4,i5-1,n-i6+1,i7-1) = b(i1-1,i2+1,i3+1,i4,i5,n-i6,i7)
enddo
enddo
enddo
enddo
enddo
enddo
enddo

if ( any(a/=b) ) print *,"fail"
print *,'pass'

end
