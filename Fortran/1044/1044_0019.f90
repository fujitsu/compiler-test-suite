module mod
TYPE abcd
     real*8,allocatable ::r_sum1(:)
     integer,allocatable::i_sum1(:)
END TYPE abcd
parameter (n = 10)
end
program main
use mod
integer i
do i = 1,n
   call sub(i)
end do
print *,'pass'
end

subroutine sub(j)
use mod
integer j
integer i
TYPE (abcd),allocatable,save:: efgh(:)

if(j==1)then
   allocate(efgh(n))
   do i=1,n
      call make_struct(efgh(i))
   end do
endif
write(1,*)loc(efgh)
write(1,*)loc(efgh(1)%r_sum1(1))
write(1,*)loc(efgh(1)%i_sum1(1))
write(1,*)efgh(1)%r_sum1(1)
write(1,*)efgh(1)%i_sum1(1)
do i=1,j
   efgh(1)%r_sum1=efgh(1)%r_sum1(1)+1
   efgh(1)%i_sum1=efgh(1)%i_sum1(1)+1
enddo
if(j == n)then
   do i =1,n
      call break_struct(efgh(i))
   enddo
   deallocate(efgh)
endif
end subroutine

subroutine make_struct(mkst)
use mod
TYPE (abcd):: mkst
allocate(mkst%r_sum1(n))
allocate(mkst%i_sum1(n))
mkst%r_sum1 = 1.0d0
mkst%i_sum1 = 1
end subroutine

subroutine break_struct(mkst)
use mod
TYPE (abcd):: mkst
deallocate(mkst%r_sum1)
deallocate(mkst%i_sum1)
end subroutine
