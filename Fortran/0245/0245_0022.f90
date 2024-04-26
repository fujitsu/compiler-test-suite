interface pp
 function af(a)
  integer,contiguous :: a(:,:)
  integer,pointer,contiguous :: af(:,:)
 end function

 function bf(a,b)
  integer,contiguous :: a(:,:),b(:,:)
  integer,pointer,contiguous :: bf(:,:)
 end function
end interface

integer :: t1(4,5) = 2
integer :: t2(4,5) = 4
if(any(pp(t1)/=2)) print*,101
if(any(pp(t1,t2)/=6)) print*,102

print*,'pass'

end

 function af(a)
  integer,contiguous :: a(:,:)
  integer,pointer,contiguous :: af(:,:)
  allocate(af(4,5))
  af=a
 end function

 function bf(a,b)
  integer,contiguous :: a(:,:),b(:,:)
  integer,pointer,contiguous :: bf(:,:)
  allocate(bf(4,5))
  bf=a+b
 end function
