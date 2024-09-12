 type x
 integer,allocatable::x1(:)
 end type
 call s1
 contains
 subroutine s1
 type (x):: v1(3)
  allocate(v1(1)%x1(3))
  v1(1)%x1 = 11
 call s((v1))

 print*, "PASS"
 end subroutine

 elemental subroutine s(v)
 type (x), intent(in):: v
  end subroutine
 end

