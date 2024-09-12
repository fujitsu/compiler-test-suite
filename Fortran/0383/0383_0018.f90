implicit none
procedure():: a0
pointer:: a0
type ty
procedure(),nopass,pointer ::a
procedure(),nopass,pointer ::b
end type
type(ty) :: sss
a0=>null()
sss%a=>null()
sss%b=>null()
print *,'pass '
end

subroutine sub01
type ty
procedure(real),nopass,pointer ::a
procedure(real),nopass,pointer ::b
end type
end subroutine

subroutine sub02
implicit none
pointer:: a0
procedure():: a0
type ty
procedure(),nopass,pointer ::a
procedure(),nopass,pointer ::b
end type
type(ty) :: sss
a0=>null()
sss%a=>null()
sss%b=>null()
end
