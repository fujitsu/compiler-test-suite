 call s1
 print *,'pass'
end

subroutine s1
 interface
  subroutine sum_pointer(array)
    real(kind=8), pointer :: array(:,:)
  end subroutine sum_pointer
  subroutine sum_array(array)
    real(kind=8) :: array(1,1)
  end subroutine sum_array
 end interface
 real(kind=8), dimension(:,:),pointer::array_section

   allocate(array_section(2,2))
   array_section=1.0d0
   call sum_array(array_section)
   call sum_pointer(array_section)
end

subroutine sum_array(array)
  real(kind=8) :: array(2,2), sum
  sum=0.0d0
  do i= 1,2
     do j=1,2
        sum = sum + array(i,j)
     end do
  end do
  if (sum/=4.0d0) print *,'error1',sum
end subroutine sum_array

subroutine sum_pointer(array)
  real(kind=8), pointer :: array(:,:)
  real(kind=8)          :: sum
  sum=0.0d0
  do i= 1,2
     do j=1,2
        sum = sum + array(i,j)
     end do
  end do
  if (sum/=4.0d0) print *,'error2',sum
end subroutine sum_pointer
