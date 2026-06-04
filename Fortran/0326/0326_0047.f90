call test01()
call test02()
print *,"pass"
end
subroutine test01()
integer(kind=4) :: iaa
integer(kind=4) :: ibb
integer(kind=4) :: icc
iaa=1
ibb=1
icc=1
!$OMP atomic
iaa=1+ibb*2+iaa
!$OMP atomic
iaa=1-ibb*2+iaa
!$OMP atomic
iaa=1+ibb*2-iaa
!$OMP atomic
iaa=1-ibb*2-iaa

!$OMP atomic
iaa=-1+ibb*2+iaa
!$OMP atomic
iaa=-1-ibb*2+iaa
!$OMP atomic
iaa=-1+ibb*2-iaa
!$OMP atomic
iaa=-1-ibb*2-iaa

!$OMP atomic
iaa=-icc+ibb*2+iaa
!$OMP atomic
iaa=-icc-ibb*2+iaa
!$OMP atomic
iaa=-icc+ibb*2-iaa
!$OMP atomic
iaa=-icc-ibb*2-iaa

!$OMP atomic
iaa=+icc+ibb*2+iaa
!$OMP atomic
iaa=+icc-ibb*2+iaa
!$OMP atomic
iaa=+icc+ibb*2-iaa
!$OMP atomic
iaa=+icc-ibb*2-iaa

!$OMP atomic
iaa=icc+ibb*2+iaa
!$OMP atomic
iaa=icc-ibb*2+iaa
!$OMP atomic
iaa=icc+ibb*2-iaa
!$OMP atomic
iaa=icc-ibb*2-iaa

!$OMP atomic
iaa=(-icc+ibb*2)+iaa
!$OMP atomic
iaa=(-icc-ibb*2)+iaa
!$OMP atomic
iaa=(-icc+ibb*2)-iaa
!$OMP atomic
iaa=(-icc-ibb*2)-iaa

!$OMP atomic
iaa=(-icc)+ibb*2+iaa
!$OMP atomic
iaa=(-icc)-ibb*2+iaa
!$OMP atomic
iaa=(-icc)+ibb*2-iaa
!$OMP atomic
iaa=(-icc)-ibb*2-iaa
end
subroutine test02()
integer(kind=4) :: iaa
integer(kind=4) :: ibb
integer(kind=4) :: icc
iaa=1
ibb=1
icc=1
!$OMP atomic
iaa=1*ibb*2+iaa
!$OMP atomic
iaa=1/ibb*2+iaa
!$OMP atomic
iaa=1*ibb*2-iaa
!$OMP atomic
iaa=1/ibb*2-iaa

!$OMP atomic
iaa=-1*ibb*2+iaa
!$OMP atomic
iaa=-1/ibb*2+iaa
!$OMP atomic
iaa=-1*ibb*2-iaa
!$OMP atomic
iaa=-1/ibb*2-iaa

!$OMP atomic
iaa=-icc*ibb*2+iaa
!$OMP atomic
iaa=-icc/ibb*2+iaa
!$OMP atomic
iaa=-icc*ibb*2-iaa
!$OMP atomic
iaa=-icc/ibb*2-iaa

!$OMP atomic
iaa=+icc*ibb*2+iaa
!$OMP atomic
iaa=+icc/ibb*2+iaa
!$OMP atomic
iaa=+icc*ibb*2-iaa
!$OMP atomic
iaa=+icc/ibb*2-iaa

!$OMP atomic
iaa=icc*ibb*2+iaa
!$OMP atomic
iaa=icc/ibb*2+iaa
!$OMP atomic
iaa=icc*ibb*2-iaa
!$OMP atomic
iaa=icc/ibb*2-iaa

!$OMP atomic
iaa=(-icc*ibb*2)+iaa
!$OMP atomic
iaa=(-icc/ibb*2)+iaa
!$OMP atomic
iaa=(-icc*ibb*2)-iaa
!$OMP atomic
iaa=(-icc/ibb*2)-iaa

!$OMP atomic
iaa=(-icc)*ibb*2+iaa
!$OMP atomic
iaa=(-icc)/ibb*2+iaa
!$OMP atomic
iaa=(-icc)*ibb*2-iaa
!$OMP atomic
iaa=(-icc)/ibb*2-iaa
end
subroutine test03()
integer(kind=4) :: iaa
integer(kind=4) :: ibb
integer(kind=4) :: icc
iaa=1
ibb=1
icc=1
!$OMP atomic
iaa=1*ibb*2*iaa
!$OMP atomic
iaa=1/ibb*2*iaa
!$OMP atomic
iaa=1*ibb*2-iaa
!$OMP atomic
iaa=1/ibb*2-iaa

!$OMP atomic
iaa=icc*ibb*2*iaa
!$OMP atomic
iaa=icc/ibb*2*iaa
!$OMP atomic
iaa=icc*ibb*2/iaa
!$OMP atomic
iaa=icc/ibb*2/iaa

!$OMP atomic
iaa=(-icc*ibb*2)*iaa
!$OMP atomic
iaa=(-icc/ibb*2)*iaa
!$OMP atomic
iaa=(-icc*ibb*2)/iaa
!$OMP atomic
iaa=(-icc/ibb*2)/iaa

!$OMP atomic
iaa=(-icc)*ibb*2*iaa
!$OMP atomic
iaa=(-icc)/ibb*2*iaa
!$OMP atomic
iaa=(-icc)*ibb*2/iaa
!$OMP atomic
iaa=(-icc)/ibb*2/iaa
end
