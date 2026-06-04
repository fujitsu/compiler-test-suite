module m1 
  type t1a 
  end type t1a
  type t1 
  end type t1 
  type,extends(t1):: t2
    integer :: t2_a =1
  end type t2
  type,extends(t2):: t2a
    integer :: t2_aa =1
  end type t2a
  type,extends(t2a):: t2aa
    integer :: t2_aaa =1
  end type t2aa
contains 
  recursive subroutine sub(arg,aa)
    class(*), intent(in) :: arg 
    integer*8  :: aa
    !integer(1) :: i1=1
    !integer(2) :: i2=1
    !integer(4) :: i3=1
    !integer(5) :: i4=1
    !logical(1) :: i1=1
    !logical(2) :: i2=1
    !logical(4) :: i3=1
    !integer(5) :: i4=1
    type(t1) :: x
    type(t2a) :: x2
    type(t2) :: xx 
    class(*) ,pointer :: xxx
    allocate(xxx,mold=x2)
    select type (arg)  
    type is (integer(1)) 
      aa = aa+10_8
      call sub(1_2,aa)          
    type is (integer(2)) 
      aa = aa+100_8
      call sub(1_4,aa)          
    type is (integer(4)) 
      aa = aa+1000_8
      call sub(1_8,aa)          
    type is (integer(8)) 
      aa = aa+10000_8
      call sub(.false._1,aa)          
    type is (logical(1))
      aa = aa+100000_8
      call sub(.false._2,aa)
    type is (logical(2))
      aa = aa+1000000_8
      call sub(.false._4,aa)
    type is (logical(4))
      aa = aa+10000000_8
      call sub(.false._8,aa)
    type is (logical(8))
      aa = aa+100000000_8
      call sub(1.0_4,aa)
    type is (real   (4))
      aa = aa+1000000000_8
      call sub(1.0_8,aa)
    type is (real   (8))
      aa = aa+10000000000_8
      call sub(1.0_16,aa)
    type is (real   (16))
      aa = aa+100000000000_8
      call sub((1.0_4,0.0),aa)
    type is (complex(4))
      aa = aa+1000000000000_8
      call sub((1.0_8,0.0),aa)
    type is (complex(8))
      aa = aa+10000000000000_8
      call sub((1.0_16,0.0),aa)
    type is (complex(16))
      aa = aa+100000000000000_8
    type is (t1)        
     aa=aa+100
     call sub(xx,aa)          
    type is (t2)        
     call sub(xxx,aa)          
    class DEFAULT
     aa=aa+10000
    if (1.eq.2) then
       call sub(x,aa)          
    endif
    end select 
    if (1.eq.2) then
       call sub(x,aa)          
    endif
  end subroutine sub 
end module m1 

use m1
type(t2) :: a
integer(1) :: aaa=1
integer(8) :: aa
aa=1
call sub(aaa,aa)
if (aa /= 111111111111111_8) print *,'err',aa
print *,'pass'
end
