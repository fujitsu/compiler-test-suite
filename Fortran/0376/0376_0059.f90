subroutine s1(p1,p2)
 interface 
  subroutine sub
  end subroutine
 end interface
 procedure(sub),pointer,optional,intent(in)::p1
 procedure(sub),pointer,optional,intent(out)::p2
 if (.not.present(p1))print *,'error-01'
 if (.not.present(p2))print *,'error-02'
 p2=>null()
 if (.not.associated(p1,sub))print *,'error-30'
 if (     associated(p2    ))print *,'error-31'
call s(p1,p2)
contains
subroutine s(p1,p2)
 interface 
  subroutine sub
  end subroutine
 end interface
 procedure(sub),pointer,optional,intent(in)::p1
 procedure(sub),pointer,optional,intent(out)::p2
 if (.not.present(p1))print *,'error-11'
 if (.not.present(p2))print *,'error-12'
 if (.not.associated(p1,sub))print *,'error-40'
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
 procedure(sub),pointer,optional,intent(in)::p1
 procedure(sub),pointer,optional,intent(out)::p2
end subroutine
end interface
 interface 
  subroutine sub
  end subroutine
 end interface
 procedure(sub),pointer::p1
 procedure(sub),pointer::p2=>null()
common //n
 n=0
 p1=>sub
 if (.not.associated(p1,sub))print *,'error-20'
 if (     associated(p2    ))print *,'error-21'
 call s1(p1,p2)
 if (n/=2)print *,'error'
 print *,'pass'
end
subroutine sub
common //n
n=n+1
end

