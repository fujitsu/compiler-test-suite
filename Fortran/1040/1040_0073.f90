integer,allocatable:: x(:)
integer y(3)
allocate(x(2))
x=2
y=f1(x)
print *,'pass'
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:)
    integer ff(0:size(xxx))
    do i=0,size(xxx)
    ff(i)=i+1
    enddo
  end function
end
