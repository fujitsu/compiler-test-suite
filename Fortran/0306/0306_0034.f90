module m1
type x
integer:: a(0:4,4,6,4)
end type
type(x)::z
contains
subroutine s1()
forall (n0=1:3)
  z%a(n0,:,:,2)=z%a(n0,:,:,2)+z%a(n0,:,::1,2)+(n0+2)
  z%a(n0,:,::1,2)=z%a(n0,:,::1,2)+z%a(n0,:,:,2)+(n0+2)
  z%a(n0,:,:,2)=z%a(n0,:,:,2)+z%a(n0,:,::1_8,2)+(n0+2)
  z%a(n0,:,::1_8,2)=z%a(n0,:,::1,2)+z%a(n0,:,:,2)+(n0+2)
  z%a(n0,:,:,2)=z%a(n0,:,:,2)+z%a(n0,:,::1,2)+(n0+2)
  z%a(n0,:,::1,2)=z%a(n0,:,::1,2)+z%a(n0,:,:,2)+(n0+2)
  z%a(n0,:,::min(1,n0),2)=z%a(n0,:,::min(1,n0),2)+z%a(n0,:,:,2)+(n0+2)
end forall
end subroutine
end

use m1
z%a=reshape([(n,n=1,5*4*6*4)],[5,4,6,4])

call s1()

print *,z%a
end
