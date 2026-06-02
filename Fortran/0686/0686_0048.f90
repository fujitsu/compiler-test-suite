type gda
  sequence
  integer ka(4)
  integer kaa(4)
end type gda

type (gda) z(2)

!$omp parallel workshare
forall ( i =1:4)
  z(1)%kaa(i) = i
  z(1)%ka(i) = z(1)%kaa(i)
  z(2)%ka(i) = z(1)%ka(i)
  z(2)%kaa(i) = z(1)%kaa(i)
end forall
!$omp end parallel workshare

if ( any(z(1)%ka /= (/1,2,3,4/) ) )  print *,"fail"
if ( any(z(2)%ka /= (/1,2,3,4/) ) )  print *,"fail"
if ( any(z(1)%kaa /= (/1,2,3,4/) ) )  print *,"fail"
if ( any(z(2)%kaa /= (/1,2,3,4/) ) )  print *,"fail"
print *,'pass'

end
