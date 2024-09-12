module mod01
 type ty1
  integer          :: ti1
 end type
 type ty2
  integer, pointer :: ti2
 end type
end module

print *,'pass'

end

subroutine sub01(dia01, dia02, dia03, diap01, diap02, diap03, di01, di02, dip01, dip02, dt101, dt101p, dt102, dt102p, dt103, dt103p, dt201, dt201p, dt202, dt202p, dt203, dt203p)
 use mod01

 integer, intent(in), dimension(10)          :: dia01,  dia02,  dia03
 integer, intent(in), dimension(:),  pointer :: diap01, diap02, diap03

 integer, intent(in)                         :: di01,  di02
 integer, intent(in), pointer                :: dip01, dip02

 type (ty1), intent(in)          :: dt101,  dt102,  dt103
 type (ty1), intent(in), pointer :: dt101p, dt102p, dt103p
 type (ty2), intent(in)          :: dt201,  dt202,  dt203
 type (ty2), intent(in), pointer :: dt201p, dt202p, dt203p

 call sub05(dia01)
 call sub02(dia02(1))
 call sub05(diap01)
 call sub02(diap02(1))

 call sub02(di01)
 call sub02(dip01)

 call sub03(dt101)
 call sub02(dt102%ti1)
 call sub03(dt101p)
 call sub02(dt102p%ti1)
 call sub04(dt201)
 call sub02(dt202%ti2)
 call sub04(dt201p)
 call sub02(dt202p%ti2)

end subroutine

subroutine sub02(i)
 integer :: i
end subroutine

subroutine sub03(t)
 use mod01
 type (ty1) :: t
end subroutine

subroutine sub04(t)
 use mod01
 type (ty2) :: t
end subroutine

subroutine sub05(i)
 integer :: i(10)
end subroutine

