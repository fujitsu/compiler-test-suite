subroutine s1(p1)
 interface 
  subroutine sub
  end subroutine
 end interface
 procedure(sub),pointer,optional,intent(in)::p1
 procedure(sub),pointer,save               ::p3
 p3=>p1
call s(p1)
contains
subroutine s(p1)
 procedure(sub),pointer,optional,intent(in)::p1
end subroutine
end

 print *,'pass'
end

subroutine sub
end

