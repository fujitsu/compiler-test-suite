type ty1
  integer(kind=1) :: ia
end type
type (ty1) :: iii
iii%ia=1
call sub01(iii)
call sub02(iii)
call sub03(iii)
call sub04(iii)
call sub05(iii)
call sub06(iii)
call sub07(iii)
call sub08(iii)
call sub09(iii)
call sub10(iii)
call sub11(iii)
call sub12(iii)
call sub13(iii)
call sub14(iii)
call sub15(iii)
call sub16(iii)
end
subroutine sub01(i)
integer(kind=1) :: i
i=i
end subroutine
subroutine sub02(i)
integer(kind=2) :: i
i=i
end subroutine
subroutine sub03(i)
integer(kind=4) :: i
i=i
end subroutine
subroutine sub04(i)
integer(kind=8) :: i
i=i
end subroutine
subroutine sub05(i)
logical(kind=1) :: i
i=i
end subroutine
subroutine sub06(i)
logical(kind=2) :: i
i=i
end subroutine
subroutine sub07(i)
logical(kind=4) :: i
i=i
end subroutine
subroutine sub08(i)
logical(kind=8) :: i
i=i
end subroutine
subroutine sub09(i)
real   (kind=4) :: i
i=i
end subroutine
subroutine sub10(i)
real   (kind=8) :: i
i=i
end subroutine
subroutine sub11(i)
real   (kind=16):: i
i=i
end subroutine
subroutine sub12(i)
complex(kind=4 ):: i
i=i
end subroutine
subroutine sub13(i)
complex(kind=8 ):: i
i=i
end subroutine
subroutine sub14(i)
complex(kind=16):: i
i=i
end subroutine
subroutine sub15(i)
character       :: i
i=i
end subroutine
subroutine sub16(i)
type ty1
  integer(kind=1) :: ia
end type
type (ty1) :: i
i=i
end subroutine
