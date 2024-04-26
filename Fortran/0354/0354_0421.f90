program main
  integer*8 ra(3,3)
  data ra/9*1/
  call sub2(ra,2)
  if (ra(3,3) .eq. 3) then
     print *,"OK"
  else
     print *,"NG",ra(3,3)
  end if
end program main

subroutine sub2(ra,n)
  integer::j,k,n
  integer*8 ra(3,3)
  do  j=1,n
     do  k=2,3
        ra(k,2)=ra(k-1,1)+1
        ra(k,3)=ra(k-1,2)+1
     end do
  end do
end subroutine sub2
