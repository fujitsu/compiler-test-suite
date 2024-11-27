interface
 subroutine default_sub(di1)
  integer :: di1
 end subroutine
end interface

procedure(default_sub) :: out_sub01
procedure(default_sub) :: out_sub02
procedure(out_sub01)   :: sub_pointer01
procedure(out_sub02)   :: sub_pointer02
pointer                :: out_sub02

end

subroutine default_sub(di1)
 integer :: di1
end subroutine

subroutine out_sub01(di1)
 integer :: di1
end subroutine

subroutine out_sub02(di1)
 integer :: di1
end subroutine
