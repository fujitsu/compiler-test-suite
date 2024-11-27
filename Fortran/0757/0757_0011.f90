  module m1
  common /t/ a
  private a
  end 
  module mm1
  use m1
!$OMP THREADPRIVATE(/T/)
  common /t/ a
  private a
  end
use mm1
print *,'pass'
end
