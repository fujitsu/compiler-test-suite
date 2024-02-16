module data
  type struct_data
     integer*8 array_ref1
     integer*8 array_ref2
     integer*8 array_def
  end type struct_data
  type (struct_data) test_data
end module data

program main
  use data
  integer*8 i
  do i=1,100
     test_data%array_ref1 = i
     test_data%array_ref2 = i+1
  end do
  
  do i=1,50
     test_data%array_def = test_data%array_ref1 + test_data%array_ref2;
  end do
  
  print *,"OK"
end program main
