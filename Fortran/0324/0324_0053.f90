 interface
  subroutine sum_pointer(array)
    real(kind=8), pointer :: array(:)
  end subroutine sum_pointer
  subroutine sum_array(array)
    real(kind=8) :: array(1)
  end subroutine sum_array
 end interface
 real(kind=8), dimension(:),pointer::array_section

   allocate(array_section(10))
   array_section =1
   call sum_array(array_section)
   call sum_pointer(array_section)
print *,'pass'
call test01()
end

subroutine sum_array(array)
 real(kind=8) :: array(1), sum
  sum = 0
  do i= 1,1
    sum = sum + array(i)
  end do
end subroutine sum_array

subroutine sum_pointer(array)
 real(kind=8), pointer :: array(:)
  sum = array(1)
end subroutine sum_pointer

subroutine test01()
 real(kind=8), dimension(:),pointer::array_section

   allocate(array_section(10))
   array_section =1
   call sum_array(array_section)
   call sum_pointer(array_section)
contains
subroutine sum_array(array)
 real(kind=8) :: array(1), sum
   sum = 0
  do i= 1,1
    sum = sum + array(i)
  end do
end subroutine sum_array

subroutine sum_pointer(array)
 real(kind=8), pointer :: array(:)
  sum = array(1)
end subroutine sum_pointer
end subroutine
