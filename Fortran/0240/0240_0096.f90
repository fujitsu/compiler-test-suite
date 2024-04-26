call test()
print *,'pass'
end
subroutine test()
interface assignment (=)
subroutine integer_to_logical_array (b, n)
implicit none
logical, intent (out) :: b(:)
integer, intent (in) :: n
end subroutine integer_to_logical_array
end interface
logical :: b(10)
integer :: n
n=1
b=n
do i=1,10
if (b(i).neqv..true.)print *,'err'
enddo
end
  subroutine integer_to_logical_array(b,n)
    implicit none
    logical, intent(out) :: b(:)
    integer, intent(in) :: n
 if (n.eq.1) then
   b=.true.
 else
   b=.false.
 endif
  end subroutine integer_to_logical_array
