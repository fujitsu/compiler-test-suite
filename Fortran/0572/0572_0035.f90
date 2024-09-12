module m   
contains
 subroutine sub(a)
     type(*)::a(:,:)
     integer(kind=8)::sh(2)
     sh= shape(a,8)
        if(sh(1)/= 5) print*,101
        if(sh(2)/= 6) print*,102
        print*,'pass'
  end subroutine 
end   module

use m
integer::b(5,6)
b=10
call sub(b)

end        



