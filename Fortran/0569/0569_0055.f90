integer:: a(5)=[1,2,3,4,5]
if(any((a(1:5:2)) .ne. [1,3,5])) print*,"101"
if(any((a(1:5:2))+(a(1:5:2)) .ne. [2,6,10])) print*,"102"
if(any(kf(a(1:5:2)) .ne. [4,5,6])) print*,"103"
if(any(kf(a(1:5:2))+kf(a(1:5:2)) .ne. [8,10,12])) print*,"104"
if(any((a(1:5:2)) .ne. [1,3,5])) print*,"105"
if(any((a(1:5:2))+(a(1:5:2)) .ne. [2,6,10])) print*,"106"
print*,"Pass"
contains
  pure function kf(a2)
    integer,value :: a2(3)
    integer :: kf(3)
    a2 = [4,5,6]
    kf=a2
  end function
end

