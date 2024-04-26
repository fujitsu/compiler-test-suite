module m1
  type dataType
    real(8), dimension(:),           pointer :: n1
    real(8), dimension(:),contiguous,pointer :: n2
    real(8), dimension(:),         allocatable:: n3
  end type dataType
  type(dataType) :: w1,w2
contains
subroutine setw
    real(8), dimension(10),target   :: t1=0,t2=0
w1%n1(-1:3)=> t1(1:10:2)
w2%n1(-1:3)=> t2(1:10:2)
end subroutine
subroutine setf(f1)
  type(dataType) :: f1
    real(8), dimension(10),target   :: t1=0
f1%n1(-1:3)=> t1(1:10:2)
end subroutine
end
subroutine s1
use m1
  implicit none
  integer :: i=1
  type(dataType) :: f1,f2
  real(8), dimension(1:10),target   :: t1=0,t2=0
w1%n1(-1:3)=> t1(1:10:2)
w2%n1(-1:3)=> t2(1:10:2)
  allocate(         f1%n2(3),f1%n3(3) )
  allocate(f2%n1(3),f2%n2(3),f2%n3(3) )
  allocate(         w1%n2(3),w1%n3(3) )
  allocate(         w2%n2(3),w2%n3(3) )
call setw
call setf(f1)

      f1%n1(1) = i
      f1%n2(1) = i
      f1%n3(1) = i
      f2%n1(1) = i
      f2%n2(1) = i
      f2%n3(1) = i
      w1%n1(1) = i
      w1%n2(1) = i
      w1%n3(1) = i
      w2%n1(1) = i
      w2%n2(1) = i
      w2%n3(1) = i
      f2%n1(2) = i
      f2%n2(2) = i
      f2%n3(2) = i
      w2%n1(2) = i
      w2%n2(2) = i
      w2%n3(2) = i
  call foo_1(f1,w1)
  call foo_2()

if (any(f1%n1(1:3)/=1       )) print *,101
if (any(f1%n2(1:3)/=1       )) print *,102
if (any(f1%n3(1:3)/=1       )) print *,103
if (any(f2%n1(1:3)/=1       )) print *,104
if (any(f2%n2(1:3)/=1       )) print *,105
if (any(f2%n3(1:3)/=1       )) print *,106
if (any(w1%n1(1:3)/=1       )) print *,107
if (any(w1%n2(1:3)/=1       )) print *,108
if (any(w1%n3(1:3)/=1       )) print *,109
if (any(w2%n1(1:3)/=1       )) print *,110
if (any(w2%n2(1:3)/=1       )) print *,111
if (any(w2%n3(1:3)/=1       )) print *,112


  contains

    subroutine foo_1(f1,w1)
      type(dataType),intent(inout) :: f1,w1
      f1%n1(2) = i
      f1%n2(2) = i
      f1%n3(2) = i
      w1%n1(2) = i
      w1%n2(2) = i
      w1%n3(2) = i
    end subroutine 
    subroutine foo_2(  )
      f1%n1(3) = i
      f1%n2(3) = i
      f1%n3(3) = i
      f2%n1(3) = i
      f2%n2(3) = i
      f2%n3(3) = i
      w1%n1(3) = i
      w1%n2(3) = i
      w1%n3(3) = i
      w2%n1(3) = i
      w2%n2(3) = i
      w2%n3(3) = i
    end subroutine 

end 
call s1
print *,'pass'
end
