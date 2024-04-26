integer,dimension(10) :: x
integer::ii,s
x=2
s=0
do ii=1,5
x=ii
s=sum(fun(x))+s
end do
if ( s == 200) then
  print *,'pass'
else
  print *,'ng'
  print *,s
endif
contains

pure function fun(x) result (r)
integer,dimension(10),intent(in) :: x
integer,dimension(10):: r
integer::i
do i=1,10
r(i)=x(i)+1
end do
end function
end
