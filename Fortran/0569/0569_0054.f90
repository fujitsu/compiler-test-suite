integer:: a(5)=[1,2,3,4,5]
if(any(kf(a(1:5:2)) .ne. [1,3,5])) print*,"101"
if(any(kf(a(1:5:2))+kf(a(1:5:2)) .ne. [2,6,10])) print*,"102"
print*,"Pass"
contains
  pure function kf(a2)
    integer,value :: a2(3)
    integer :: kf(3)
    kf=a2
  end function
end

