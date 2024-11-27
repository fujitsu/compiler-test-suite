  implicit none
    character(len=10),allocatable :: char01(:)

  allocate(char01(3))
  char01='x'

  write(char01,*) "1",'2','3' 
if (char01(1)/=' 123')write(6,*) "NG"
if (char01(2)/='x')write(6,*) "NG"
if (char01(3)/='x')write(6,*) "NG"
print *,'pass'

end
