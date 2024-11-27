program main
   complex, dimension(0:10) :: wf1
   real :: dr=0.5
   integer :: i

   wf1 = (/ (i, i=0,10) /)
   if (abs(the_norm(wf1, dr)-3166.625)>0.001)write(6,*) "NG"
print *,'pass'
contains
real function the_norm(wf, dr)
   complex, dimension(0:), intent(in) :: wf
   real, intent(in) :: dr
   integer :: i
   the_norm=0

   do i=0, ubound(wf,dim=1)
      the_norm = the_norm + wf(i) * CONJG(wf(i)) * ((i*dr)**2) * dr
   end do
end function the_norm
end program main
