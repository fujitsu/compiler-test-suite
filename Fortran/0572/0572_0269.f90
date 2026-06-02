module m
implicit none 

integer(kind=1)::i1
integer(kind=2)::i2
integer(kind=4)::i4
integer(kind=8)::i8

real(kind=4)::r4
real(kind=8)::r8

complex(kind=4)::c4
complex(kind=8)::c8

contains

   subroutine sub3(aa,r)        
   implicit none       
 type(*),optional::aa(..)
        integer::r
  if(present(aa).neqv. .true.) print*,'402'
  if(size(aa) /= 1) print*,'405' 
  if(is_contiguous(aa).neqv. .true.)print*,'406' 
  if(rank(aa) /= r)print*,'406' 

   end subroutine sub3



        
   
end module m

use m

call sub3(i1,0)
call sub3(i2,0)
call sub3(i4,0)
call sub3(i8,0)

call sub3(r4,0)
call sub3(r8,0)


call sub3(c4,0)
call sub3(c8,0)

print*,"pass"
        end
