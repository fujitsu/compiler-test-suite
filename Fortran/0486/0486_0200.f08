type :: str
  integer,allocatable :: i(:,:)
end type
parameter(k=10)
type(str) :: sss(k+k)
integer::iii(k*k)
real(8)::t1,t2
iii=1
call cpu_time(t1)
sss = str(reshape([iii],[k,k]))
call cpu_time(t2)
if(size(sss)/=k+k) print *,'err'
if(t2-t1>13.0_8) write(1,*)'slow',' ','CPU TIME=', t2-t1
print *,'pass'
end
