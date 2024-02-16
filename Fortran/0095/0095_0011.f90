program pro
implicit none
interface
  subroutine sub(arr)
    real :: arr(2,2)
  end subroutine sub
end interface
real, allocatable :: arr1(:,:)
allocate(arr1(2,2))
  arr1(1,1)= 3.0
  arr1(1,2)= 4.4
  arr1(2,1)= 3.8
  arr1(2,2)= 4.2
call sub(arr1)
end

subroutine sub(arr)
  implicit none
  real :: arr(2,2)
  real :: x(2,2)

x=LOG_GAMMA(x=arr)
    if( .not.(x(1,1)>0.68 .and. x(1,1)<0.70))  print *,101
    if( .not.(x(2,1)>1.53 .and. x(2,1)<1.55))  print *,102
    if( .not.(x(1,2)>2.30 .and. x(1,2)<2.32))  print *,103
    if( .not.(x(2,2)>2.03 .and. x(2,2)<2.05))  print *,104
        print*,"pass"
end subroutine sub
