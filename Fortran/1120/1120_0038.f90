module mod01
 contains
  subroutine m01sub01(m01s01_df01)
   interface
    function m01s01_df01() result(m01s01_dfarg01)
     interface
      subroutine isub01()
      end subroutine
     end interface
     procedure(isub01), pointer :: m01s01_dfarg01
    end function
   end interface
   procedure(m01s01_df01), pointer :: pm01s01_df01p01
   pm01s01_df01p01 => m01s01_df01
  end subroutine
  function m01func01() result(m01rst01)
   interface
    subroutine isub01()
    end subroutine
   end interface
   procedure(isub01), pointer :: m01rst01
   entry m01f01_ent01() result(m01rst01)
   procedure(m01f01_ent01), pointer :: pm01f01_e01p01
   pm01f01_e01p01 => m01f01_ent01
   m01rst01 => isub01
  end function
end module

module mod02
 contains
  subroutine m02sub01()
   procedure(m02func01   ), pointer :: pm02f01p01
   procedure(m02f01_ent01), pointer :: pm02f01_e01p01
   pm02f01p01     => m02func01
   pm02f01p01     => m02f01_ent01
   pm02f01_e01p01 => m02func01
   pm02f01_e01p01 => m02f01_ent01
  end subroutine
  function m02func01() result(m02rst01)
   interface
    subroutine isub01()
    end subroutine
   end interface
   procedure(isub01), pointer :: m02rst01
   entry m02f01_ent01() result(m02rst01)
   m02rst01 => isub01
end function

end module

subroutine sub01(s01_df01)
 interface
  function s01_df01() result(s01_dfarg01)
   interface
    subroutine isub01()
    end subroutine
   end interface
   procedure(isub01), pointer :: s01_dfarg01
  end function
 end interface
 procedure(s01_df01), pointer :: ps01_df01p01

 ps01_df01p01 => s01_df01
end subroutine

function func01() result(rst01)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: rst01
 entry f01_ent01() result(rst01)
 procedure(f01_ent01), pointer :: pf01_e01p01
 pf01_e01p01 => f01_ent01
 rst01 => isub01
end function

interface
 function func01() result(rst01)
  interface
   subroutine isub01()
   end subroutine
  end interface
  procedure(isub01), pointer :: rst01
 end function
end interface

procedure(), pointer :: pprocp01

pprocp01 => func01()

if (associated(pprocp01)) print *,'pass'

end

subroutine isub01()
end subroutine
