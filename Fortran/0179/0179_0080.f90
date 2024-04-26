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
  if (1.eq.2)    g%z=1
end block
    end subroutine ss
use m1
call ss
print *,'pass'
end
