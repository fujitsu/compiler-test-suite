  integer,parameter::type=16
  real(kind=type),allocatable,dimension(:) :: a
  n = 10
  allocate(a(n))
  call random_number(a)
  call sort1(a,0,n-1)
  if( maxval(a) == a(n) .and. minval(a) == a(1) ) then
    print *,'** OK **'
  else
    print *,'** NG **'
  end if
    contains
    recursive subroutine sort1(a,first,last)
    implicit none
    real(kind=type),dimension(0:last) :: a
    real(kind=type) x,t
    integer,intent(in):: first,last
    integer::i,j
    x = a((first+last)/2)
    i = first ; j = last ;
    do
      do while( a(i) < x )
        i=i+1
      end do
      do while( x < a(j) )
        j=j-1
      end do
      if( i >= j ) exit
      t = a(i) ; a(i) = a(j) ; a(j) = t;
      i=i+1
      j=j-1
    end do
    if( first < i -1 ) call sort1(a,first,i-1)
    if( j + 1 < last ) call sort1(a,j + 1,last );
    end subroutine
  end
