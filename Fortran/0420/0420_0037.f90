  type x1234
     real(kind=8),allocatable,dimension(:) :: t751
  end type x1234
  type(x1234) v671
  real(kind=8) ag19(16)
  allocate(v671%t751(16))
  do i=1,16
     v671%t751(i) = dble(i)
     ag19(i) = px1(1)
  end do
  if (ag19(10) == 2.0) then
  else
     print *,ag19(10)
  endif
  print *,"pass"
contains
  real function px1(i)
    integer i
    px1 = v671%t751(i) + dble(i)
  end function px1

end 
