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
end module

end

function m01s01_df01() result(m01s01_dfarg01)
 interface
  subroutine isub01()
  end subroutine
 end interface
 procedure(isub01), pointer :: m01s01_dfarg01
end function

subroutine isub01()
end subroutine
