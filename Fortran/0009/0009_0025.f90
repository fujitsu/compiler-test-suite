module m1
  type drv_t
    real(8), dimension(:),pointer,contiguous :: pa
  end type 
  type(drv_t) :: v
end
  use m1
  allocate(v%pa(3))
  do k=1,3
    v%pa(k) = k*4
  end do

   write(1,*) v%pa
print *,'OK'
end 
