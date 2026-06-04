        module m1
         type  t1  
         integer :: aa
         end type
integer::m=0
           
         interface gnr 
         subroutine sub1(d1)
         import t1
         type(t1),allocatable :: d1
        end subroutine
         
        subroutine sub2(d1)
        import t1
        type(t1),pointer:: d1
       end subroutine
         
        end interface
        end module
        use m1
        type(t1),allocatable ::  aobj
        type(t1),pointer::  pobj
        call gnr(aobj)
if (m/=1) print *,101
        call gnr(pobj)
if (m/=11) print *,102
print *,'pass'
        end 

         subroutine sub1(d1)
use m1
         type(t1),allocatable :: d1
m=m+1
allocate(d1)
        end subroutine
         
        subroutine sub2(d1)
use m1
        type(t1),pointer:: d1
m=m+10
allocate(d1)
       end subroutine
