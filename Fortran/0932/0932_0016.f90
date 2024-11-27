module m1
  integer:: da=0
  procedure(sub),pointer,protected:: p
  contains
   subroutine new1 
    da=da+10
   end subroutine
   subroutine sub
    print*,"ss"
   end subroutine
   subroutine ss
   block
     p=> sub
   end block
   p=>new1
    end subroutine
 end
 use m1
 call ss
 call p
 if (da /= 10) print *,201
 if (associated(p,sub) )print *,202
 if (.not. associated(p,new1) )print *,203
  
 print *,"Pass"
 end

