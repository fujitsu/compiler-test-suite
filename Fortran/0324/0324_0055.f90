
  integer::j1=1
  integer,parameter::n=1
  print *,'pass'
  contains
  subroutine i4_1(a)
   dimension a(1,2+j1)
   character(n) :: a
   a=a
  end subroutine
 end
