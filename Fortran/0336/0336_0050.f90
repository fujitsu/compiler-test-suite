program main
integer,dimension(:),allocatable,target::a
integer,dimension(1:10)::b,p
integer c,res,idx
interface
  subroutine sub(a,b,c,p,idx,res)
  integer,dimension(2:10)::a
  integer,dimension(1:10)::b,p
  integer c,idx,res
  end
end interface

allocate(a(2:10))
p = 4
a = 5
b = a(2)
c = 10
idx = 10000000
call sub(a,b,c,p,idx,res)

deallocate(a)
print *,res
end

subroutine sub(a,b,c,p,idx,res)
integer,dimension(2:10)::a
integer,dimension(1:10)::b,p,d
integer c,res,idx

d = 0
do i=2,c,1
  d(i) = a(i) + b(i)
  if (d(i).eq.0) then
    d(i) = d(i) + (1/p(idx))
  endif
enddo

res = d(10)
end subroutine
