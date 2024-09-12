integer:: a(3)=[1,2,3]
if(any((a) .ne. [1,2,3])) print*,"101"
if(any((a)+(a) .ne. [2,4,6])) print*,"102"
if(any(kf(a) .ne. [4,5,6])) print*,"103"
if(any(kf(a)+kf(a) .ne. [8,10,12])) print*,"104"
if(any((a) .ne. [1,2,3])) print*,"105"
if(any((a)+(a) .ne. [2,4,6])) print*,"106"
print*,"Pass"
contains
  pure function kf(a2)
    integer,value :: a2(3)
    integer :: kf(3)
    a2 = [4,5,6]
    kf=a2
  end function
end

