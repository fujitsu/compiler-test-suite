module mod

  type Table
     integer , dimension (3) :: at_number
     character (4) , dimension (3) :: at_name
  end type Table

  type (Table) :: A
  type (Table) :: B

  data A / Table ( (/ 1 , 2 , 3 /) , (/ "H   ", "He  " , "Li  " /) ) /
  data B % at_number / 1 , 2 , 3  /
  data B % at_name / "$$$$" , "****" , "++++" /

end module mod

program main
  use mod

  write(17,*)A
  write(17,*)B
print *,'pass'

end program main
