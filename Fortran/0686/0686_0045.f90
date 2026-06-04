integer,parameter:: n=5
integer a(n,n,n)
integer b(n,n,n)
!$omp parallel
!$omp do
do i3=1,n
  do i2=1,n
    do i1=1,n
      a(i1,i2,i3) =i1+i2*10+i3*100
      b(i1,i2,i3) =i1+i2*10+i3*100
    enddo
  enddo
enddo
!$omp end do

!$omp workshare
forall (i3=2:n  )
  forall (i2=1:n-1)
    forall (i1=n:2:-1)
      a(i3-1,i1,i2) = a(i3,i2+1,i1-1)
    end forall
  end forall
end forall
!$omp end workshare

!$omp single 
do      i3=2,n   
  do      i2=1,n-1 
    do      i1=n,2,-1
      b(i3-1,i1,i2) = b(i3,i2+1,i1-1)
    enddo
  enddo
enddo
!$omp end single

if ( any(a/=b) ) print *,"fail"

!$omp do
do i3=1,n
  do i2=1,n
    do i1=1,n
      if( a(i1,i2,i3) .ne. b(i1,i2,i3) ) then
        write(*,100) i1,i2,i3,a(i1,i2,i3),i1,i2,i3,b(i1,i2,i3),&
                       & a(i1,i2,i3) - b(i1,i2,i3)
      endif
    enddo
  enddo
enddo
!$omp end do
100 format('a(',i2,',',i2,',',i2,')=',i4,'  -  b(',i2,',',i2,',',i2,')=',i4, &
          &' = ',i4 )
!$omp end parallel
print *,'pass'
end
