  module m1
  complex(8),parameter,dimension(*)::ca=[(1,2),(3,4),(5,6),(7,8)]
  complex(8),parameter,dimension(*)::cr=[(11,2),(12,4),(13,6),(14,8)]
   real    (8),parameter,dimension(*)::ra=[2,4,6,8]
   contains
   function fun(r) result (ra)
   real,pointer,intent(in)::r
   ra = r
   if (r .ne. 4) print*,101
   end function
   end
   use m1
   complex,target :: c(4)
   type ty
   complex,pointer:: p2
   end type

   type(ty) :: obj
   do k=1,4
   c(k)%re=ca(k)%re
   c(k)%im=ca(k)%im
    end do
     obj%p2=>c(2)
      print*, fun(obj%p2%im)
      print *,'pass'
      end

