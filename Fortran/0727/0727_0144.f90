 module m1
     interface 
        elemental subroutine print(x)
        character*(*),intent(in):: x
        end subroutine
     end interface
  contains
    elemental function f1(x1)
    character(*),intent(in)::x1
    character*2::f1
    f1=x1
    end function
    subroutine sa(x)
    character(*),dimension(:)::x
    if (x(1)/='x xx')write(6,*) "NG"
    if (x(2)/='y yy')write(6,*) "NG"
    end subroutine
  end
 use m1
 character,allocatable,dimension(:)::a1,a2
 allocate(a1(2),a2(2));a1=(/'x','y'/);a2=a1
 call sa(f1(a2)//f1(a1//a1))
  print *,'pass'
 end

