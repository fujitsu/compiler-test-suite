module li_module
contains
  function a1(arr,i) result(raa)
    interface size
      pure function li_size(l) result (r)
        real,intent(in) :: l
        integer :: r
      end function li_size
    end interface
    integer :: i,arr(i)
    integer, dimension(size(arr)) :: raa
    raa=10
  end function 
  function a2(arr,i) result(raa)
    interface size
      pure function li_size(l) result (r)
        integer,intent(in) :: l
        integer :: r
      end function li_size
    end interface
    integer :: i,arr(i)
    integer, dimension(li_size(arr(1))) :: raa
    raa=10
  end function 
  function a3(arr,i) result(raa)
    interface size
      pure function li_size(l) result (r)
        integer,intent(in) :: l
        integer :: r
      end function li_size
    end interface
    integer :: i,arr(i)
    integer, dimension(size(arr(1))) :: raa
    raa=10
  end function 
end module li_module

use li_module
integer::arr(1)
parameter(k=100)
real::x1(1),x2(k),x3(k)
arr(1)=k

if(size(a1(arr,1))/=1)print *,'error-1'
if(size(a2(arr,1))/=k)print *,'error-2'
if(size(a3(arr,1))/=k)print *,'error-3'
x1=a1(arr,1)
x2=a2(arr,1)
x3=a3(arr,1)
if (any(x1/=10))print *,'error-11'
if (any(x2/=10))print *,'error-12'
if (any(x3/=10))print *,'error-13'

print *,'pass'
end
      pure function li_size(l) result (r)
        integer,intent(in) :: l
        integer :: r
        r=l
      end function li_size
