 function j4_ff(p) result(a)
 character(kind=1),pointer:: a
 character(kind=1,len=*),pointer,optional::p
  a=>p
 end function
