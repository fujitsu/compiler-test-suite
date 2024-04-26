program main

 complex*16,dimension(2,2,2:1) ::a
 complex*16,parameter,dimension(2,2,2:1) ::b = RESHAPE((/(2.0_8,2.0_8),(3.0_8,3.0_8),&
                               (4.0_8,4.0_8),(6.0_8,6.0_8)/),(/2,2,0/))
 complex*16::backend
 complex*16,parameter::frontend  = product(b)
 a = reshape((/(2.0_8,2.0_8),(3.0_8,3.0_8),(4.0_8,4.0_8),(6.0_8,6.0_8)/),(/2,2,0/))
 backend = product(a)
 print*,frontend
 print *, backend


end
