!
!
!

integer,pointer::a
integer,target::c
c=10
a => c
!$omp parallel private(a)
call sub(a)
!$omp end parallel
print *,"pass"
contains
  subroutine sub(a)
    integer , pointer:: a
    integer , target :: c
    c=50
    a => c
    a=100
    !$omp task
      if (a /= 100) then
         print *,"NG a=",a
      endif
    !$omp end task
    !$omp taskwait
  end subroutine sub
end
