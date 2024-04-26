module m1
  type z_type
     integer,pointer::z
  end type z_type
  type(z_type) ::g
end
    subroutine ss
      use m1
      g%z=1
    end subroutine ss
    subroutine aa
     call ss
    end subroutine aa
use m1
allocate(g%z)
call aa
print *,'pass'
end
