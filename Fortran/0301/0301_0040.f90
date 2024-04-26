module m1
  type w
    real(16),dimension(2,3)::a1=reshape((/1,2,3,4,5,6/),(/2,3/))
  end type
  contains
  elemental function ss1(x1,x2)
    real(16),intent(in)::x1
    real(16),intent(in)::x2
    real(16)::ss1
    ss1=x1+x2-x1
  end function
end
  use m1
  type(w),pointer::x
  allocate(x)
  if (any(abs(ss1(x%a1,(x%a1))-reshape((/1,2,3,4,5,6/),(/2,3/)))>0.00001)) then
    write(6,*) "NG"
  else
    write(6,*) "OK"
   endif
  deallocate(x)
end
 
