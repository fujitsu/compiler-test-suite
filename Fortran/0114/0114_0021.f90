 interface
  subroutine sum_pointer(array)
    real(kind=8), pointer :: array(:)
  end subroutine sum_pointer
  subroutine sum_array(array)
    real(kind=8) :: array(1)
  end subroutine sum_array
 end interface
 real(kind=8), dimension(:),pointer::array_section
 common/com/x

 if( x.eq.1 ) then
   call sum_array(array_section)
   call sum_pointer(array_section)
 else
   print *,'PASS'
 endif
end

subroutine sum_array(array)
 real(kind=8) :: array(1), sum
  do i= 1,1
    sum = sum + array(i)
  end do
end subroutine sum_array

subroutine sum_pointer(array)
 real(kind=8), pointer :: array(:)
  sum = array(1)
end subroutine sum_pointer

block data
 common/com/x
 data x/0/
end
