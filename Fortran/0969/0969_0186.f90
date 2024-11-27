interface
 subroutine isub01(is01_dp01)
  procedure() :: is01_dp01
 end subroutine
 subroutine isub02(is02_dp01)
  external    :: is02_dp01
 end subroutine
 subroutine isub03(is03_dp01)
  procedure(logical) :: is03_dp01
 end subroutine
 subroutine isub04(is04_dp01)
  logical, external :: is04_dp01
 end subroutine
 subroutine isub05(is05_dp01)
  procedure() :: is05_dp01
 end subroutine

end interface





end

subroutine isub01(is01_dp01)
 procedure(logical) :: is01_dp01
end subroutine

subroutine isub02(is02_dp01)
 logical, external  :: is02_dp01
end subroutine

subroutine isub03(is03_dp01)
 procedure() :: is03_dp01
end subroutine

subroutine isub04(is04_dp01)
 external :: is04_dp01
end subroutine

subroutine isub05()
 interface
  
 end interface
end subroutine
