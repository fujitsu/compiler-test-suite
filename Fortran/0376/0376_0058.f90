subroutine s1(p1,p2)
 interface 
  subroutine sub
  end subroutine
 end interface
 procedure(sub),pointer,optional,intent(in)::p1
 procedure(sub),pointer,optional,intent(out)::p2
 if (present(p1))print *,'error-01'
 if (present(p2))print *,'error-02'
call s(p1,p2)
contains
subroutine s(p1,p2)
 interface 
  subroutine sub
  end subroutine
 end interface
 procedure(sub),pointer,optional,intent(in)::p1
 procedure(sub),pointer,optional,intent(out)::p2
 if (present(p1))print *,'error-11'
 if (present(p2))print *,'error-12'
 if (.not.present(p1))return
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
 procedure(sub),pointer,optional,intent(in)::p1
 procedure(sub),pointer,optional,intent(out)::p2
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
 call s1(     )
 if (n/=0)print *,'error'
 print *,'pass'
end
subroutine sub
common //n
n=n+1
end

