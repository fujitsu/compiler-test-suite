module mod_1
 type xx
   integer::x1
 end type
  integer :: var
!$omp threadprivate (var)
private
public::var
end 
module mod_2
  use mod_1, ONLY:  var
end
  use mod_2
  use mod_1
var=1



print *,'pass'

end
