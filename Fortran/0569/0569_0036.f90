integer,pointer :: a
integer::i=0
allocate(a)
a=10        
call sub(a,i)
if(i/= 20)print*,101
print*,"PASS"
        contains
        pure subroutine sub(x,z)
        integer,pointer,intent(out) :: x     
        integer,intent(out)::z
        integer,target :: y
        y = 20
        x => y
        z=x
        end subroutine
        end
