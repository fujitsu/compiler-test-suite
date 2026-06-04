integer :: t1(8) /1,2,3,4,5,6,7,8/
type gda  
  sequence
     integer:: ka(8) = 0
     integer:: kaa(8) = 0
end type gda

type (gda) a(5)
type (gda) b(5)

!$omp parallel workshare
forall ( j=1:5 )
forall ( i=1:8 )
    a(j)%ka(i) = i
    b(j)%ka(i) = i
endforall
endforall
!$omp end parallel workshare

!$omp parallel workshare
forall (j=1:5:1)
forall (i=1:7:1)
    a(j)%kaa(i) = i * j + a(j)%ka(t1(i+1))
    a(j)%ka(i+1) = a(j)%kaa(i) + j
endforall
endforall
!$omp end parallel workshare
do      j=1,5,1 
do      i=1,7,1 
    b(j)%kaa(i) = i * j + b(j)%ka(t1(i+1))
    b(j)%ka(i+1) = b(j)%kaa(i) + j
end do
end do

do      j=1,5,1 
do      i=1,8,1 
  if ( a(j)%kaa(i) /= b(j)%kaa(i) ) print *,"fail"
  if ( a(j)%ka(i)  /= b(j)%ka(i)  ) print *,"fail"
end do
end do
print *,'pass'
end
