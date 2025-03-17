     module mod
       contains
        subroutine foo(x)
         real(8),allocatable::x(:)
        end subroutine
     end
subroutine sub1
     real, parameter    :: pi = 3.14 
     real(8), parameter :: re=2.0_8
     complex :: c = (pi, pi)
     complex(8):: cd
     cd=(re, 3.0_8)
     end
subroutine sub2
     type struct
        real(8),allocatable::x(:)
        integer:: i
     end type struct
     type(struct):: var
     allocate(var%x(2))
     end
call sub1
call sub2
print *,'pass'
end
