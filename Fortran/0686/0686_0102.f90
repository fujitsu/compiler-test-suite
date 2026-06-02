integer,parameter:: n1=2,n2=3,n3=4,n4=4,n5=3,n6=2,n7=2
integer a(n1,n2,n3,n4,n5,n6,n7)
integer b(n1,n2,n3,n4,n5,n6,n7)
do i7=1,n7
do i6=1,n6
do i5=1,n5
do i4=1,n4
do i3=1,n3
do i2=1,n2
do i1=1,n1
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
forall (i7=1:n7,i6=1:n6,i5=1:n5,i4=1:n4)
forall (i3=1:n3,i2=1:n2)
forall (i1=1:n1)
  a(i1,i2,i3,i4,i5,i6,i7) = a(i1,i2,i3,i4,i5,i6,i7) * 2 -1
end forall
end forall
end forall
!$omp end parallel workshare

do i7=1,n7 ; do i6=1,n6 ; do i5=1,n5 ; do i4=1,n4
do i3=1,n3 ; do i2=1,n2  
do i1=1,n1
  b(i1,i2,i3,i4,i5,i6,i7) = b(i1,i2,i3,i4,i5,i6,i7) * 2 -1
enddo
enddo ; enddo
enddo ; enddo ; enddo ; enddo

if ( any( a /= b ) ) print *,"fail"
print *,'pass'
end
