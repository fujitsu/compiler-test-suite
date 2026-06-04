integer :: aa(4),bb(4),cc(4),dd(4)

interface
  elemental integer function func1 (x)
    integer*4,intent(in) :: x
  end function func1
end interface

type gda
  integer ka(4)
  integer kaa(4)
end type gda

type (gda) z
logical(4)::l1,l2,l3,l4,l5,l6

!$omp parallel default(shared),shared(l1,l2,l3,l4,l5,l6)
!$omp workshare
forall ( i=1:4 )
  aa(i) = i
  bb(i)    = aa(i)
  cc(i)    = aa(i)
  dd(i)    = aa(i)
  z%kaa(i) = i
  bb(i) = func1(bb(i))
  z%kaa(i) = bb(cc(z%kaa(i)))+1
  z%ka(i)  = z%kaa(i)
  cc(z%kaa(i)) = cc(z%ka(i)) + 1
end forall
!$omp end workshare
!$omp workshare
  l1=any(aa/=(/1,2,3,4/))
  l2=any(bb/=(/2,2,1,2/))
  l3=any(cc/=(/1,3,4,4/))
  l4=any(dd/=(/1,2,3,4/))
  l5=any(z%ka/=(/3,3,2,3/))
  l6=any(z%kaa/=(/3,3,2,3/))
!$omp end workshare
!$omp end parallel
if (l1.or.l2.or.l3.or.l4.or.l5.or.l6) print *,"fail"
print *,'pass'
end

  elemental integer function func1 ( x )
    integer*4,intent(in) :: x
    func1 = mod(x*x,3) + 1
  end function
