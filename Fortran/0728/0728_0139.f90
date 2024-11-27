module my_table
implicit none

type my_table_type
  integer               :: points
  integer               :: maxdata
  character*1, pointer  :: data(:)
end type my_table_type

integer, parameter :: maxtab = 3
type(my_table_type) :: table(maxtab)

integer :: j

data (table(j)%points, j=1,maxtab) / maxtab * 5 /

end module my_table
use my_table
if (any(table%points/=5))write(6,*) "NG"
print *,'pass'
end
