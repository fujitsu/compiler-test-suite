module data
  type str_data2
     integer*8  zzz
  end type str_data2
  type str_data
     integer*8  i_data
     real*8     r_data
     type (str_data2) yyy
  end type str_data
end module data

program main
  use data
  type (str_data) xxx(3,3)
  data xxx%i_data, xxx%r_data, xxx%yyy%zzz /9*1, 9*1.0, 9*1/
  call sub2(xxx,2)

  if (xxx(3,3)%i_data .eq. 2) then
     print *,"OK"
  else
     print *,"NG",xxx(3,3)%i_data
  end if
end program main

subroutine sub2(xxx,n)
  use data
  integer::j,k,n
  type (str_data) xxx(3,3)
  do  j=1,n
     do  k=2,3
        xxx(k,2) = xxx(k-1,1)
        xxx(k,3)%i_data = xxx(k-1,2)%i_data + 1
     end do
  end do
end subroutine sub2
