module m1
  type z_type
     integer,pointer::z
  end type z_type
  type(z_type) ::g
end
    subroutine ss
block
  type z_type
     integer,pointer::z
  end type z_type
  type(z_type) ::g
block
  if (1.eq.2)    g%z=1
end block
end block
call ii()
contains
subroutine ii()
end subroutine
    end subroutine ss
use m1
call ss
print *,'pass'
end
