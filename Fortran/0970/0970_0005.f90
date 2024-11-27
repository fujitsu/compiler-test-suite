
intrinsic                :: idim
procedure(idim)          :: pidim
procedure(idim), pointer :: pidimp
integer                  :: i01, i02, i03, i04, i05, i06, i07, i08, i09, i10, i11, i12

pidimp => idim

i01 = pidim (    3,     2)
i02 = pidim (    3, y = 2)
i03 = pidim (x = 3, y = 2)
i04 = pidim (y = 2, x = 3)

i05 =  idim (    3,     2)
i06 =  idim (    3, y = 2)
i07 =  idim (x = 3, y = 2)
i08 =  idim (y = 2, x = 3)

i09 = pidimp(    3,     2)
i10 = pidimp(    3, y = 2)
i11 = pidimp(x = 3, y = 2)
i12 = pidimp(y = 2, x = 3)

if (i01.ne.i02) print *,i02
if (i02.ne.i03) print *,i03
if (i03.ne.i04) print *,i04
if (i04.ne.i05) print *,i05
if (i05.ne.i06) print *,i06
if (i06.ne.i07) print *,i07
if (i07.ne.i08) print *,i08
if (i08.ne.i09) print *,i09
if (i09.ne.i10) print *,i10
if (i10.ne.i11) print *,i11
if (i11.ne.i12) print *,i12


print *,'pass'

end

elemental function pidim(a, b)
 integer, intent(in) :: a
 integer, intent(in) :: b
 integer             :: pidim
 pidim = idim(a, b)
end function

subroutine sub01(pidim)
 intrinsic                :: idim
 procedure(idim)          :: pidim
 integer                  :: i01, i02, i03, i04

 i01 = pidim (    3,     2)
 i02 = pidim (    3, y = 2)
 i03 = pidim (x = 3, y = 2)
 i04 = pidim (y = 2, x = 3)

end subroutine
