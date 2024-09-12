program pro
implicit none
interface
  subroutine sub(arr)
    real :: arr(2,2)
  end subroutine sub
end interface
real, allocatable :: arr1(:,:)
allocate(arr1(2,2))
arr1(1,1)= 10.4
arr1(1,2)= 20.0
arr1(2,1)= 10.8
arr1(2,2)= 20.2
call sub(arr1)
end

subroutine sub(arr)
  implicit none
  real :: arr(2,2)
  real :: x(2,2)

x=ERFC_SCALED(x=arr)
    if( .not.(x(1,1)>0.053 .and. x(1,1)<0.056))  print *,101
    if( .not.(x(1,2)>0.026 .and. x(1,2)<0.029))  print *,102
    if( .not.(x(2,1)>0.051 .and. x(2,1)<0.054))  print *,103
    if( .not.(x(2,2)>0.026 .and. x(2,2)<0.028))  print *,104
    print*,"pass"
end subroutine sub
