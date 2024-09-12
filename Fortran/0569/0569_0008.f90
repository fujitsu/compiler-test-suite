interface
  pure subroutine prc(s)
   integer,intent(out)::s
  end subroutine
end interface


if( fun(prc)/= 78)print*,101
print*,"PASS"
contains 
 pure function fun(p1)
  procedure(prc),pointer,intent(in)::p1
  integer::act,fun
  act=10
  call p1(act)
  fun=act
end function

end


 pure subroutine prc(s)
  integer,intent(out)::s
  s=78
  
end subroutine
