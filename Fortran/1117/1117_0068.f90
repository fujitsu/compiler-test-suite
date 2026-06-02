program main
  integer sub
  i = 0

!$omp parallel do
  do j=1, 100
!$omp atomic
    i = i+sub(j)
  end do

  if(i .eq. 5050) then
    print *, 'ok'
  else
    print *, 'NG'
  end if
end program main

recursive integer function sub(a) result(b)
   integer a

   if(a .eq. 1) then
     b = 1
     return
   else if(a .eq. 0) then
     b = 0
     return
   endif
   b = 0
   b = 1+sub(a-1)
end function sub
