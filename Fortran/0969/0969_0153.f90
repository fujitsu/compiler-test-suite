module mod01
 contains

  subroutine m01sub01()
   procedure(m01func01), pointer :: pm01func01
   pm01func01 => m01func01 
  end subroutine

  function m01func01() result(m01rst01)
   interface
    subroutine isub01()
    end subroutine
   end interface
   procedure(isub01), pointer :: m01rst01
   m01rst01 => isub01
  end function

end module

end

subroutine isub01()
end subroutine
