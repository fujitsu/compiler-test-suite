integer a(10,100)
a=1
call sub(a,1)
if (any(a(:,1)/=123401))print *,'error'
print *,'pass'
contains

subroutine sub(a, i)
integer a(:,:)
integer i

  do j=1, 10
    do k=1, 100
!$omp atomic
      a(j,i) = a(j,i) + 1234
    end do
  end do
end subroutine
end
