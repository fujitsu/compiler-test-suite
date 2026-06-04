integer :: aa(4)

type gda
  integer ka(4)
  integer kaa(4)
end type gda

type (gda) z

!$omp parallel workshare
forall ( i =1:4)
  aa(i) = i
  z%ka(i) = aa(i)
  z%kaa(i) = i
end forall
!$omp end parallel workshare

if ( any(z%ka/=z%kaa) ) print *,"fail"
print *,'pass'
end
