subroutine s1(p1,p2)
 interface 
  subroutine sub
  end subroutine
 end interface
 procedure(sub),pointer,intent(in)::p1
 procedure(sub),pointer,intent(out)::p2
call s(p1,p2)
contains
subroutine s(p1,p2)
 interface 
  subroutine sub
  end subroutine
 end interface
 procedure(sub),pointer,intent(in)::p1
 procedure(sub),pointer,intent(out)::p2
 p2=>p1
 call p1
 call p2
end subroutine
end
interface
subroutine s1(p1,p2)
 interface 
  subroutine sub
  end subroutine
 end interface
 procedure(sub),pointer,intent(in)::p1
 procedure(sub),pointer,intent(out)::p2
end subroutine
end interface
 interface 
  subroutine sub
  end subroutine
 end interface
 procedure(sub),pointer::p1
 procedure(sub),pointer::p2
common //n
 n=0
 p1=>sub
 call s1(p1,p2)
 if (n/=2)print *,'error'
 print *,'pass'
end
subroutine sub
common //n
n=n+1
end

