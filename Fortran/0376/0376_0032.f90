subroutine s
  integer(8) ::n1
  integer(2) ::n2
  integer(1) ::n3
  type k1; integer::n; end type
  type k2; integer::n; end type
  type k3; integer::n; end type
  interface 
     subroutine s1(x)
       import n1
       integer x(sizeof(n1))
     end subroutine 
   end interface
  interface 
     subroutine s2(x)
       import n1
       import 
       integer x(sizeof(n2),sizeof(n1))
     end subroutine 
     subroutine s3(x)
       import 
       import n1
       integer x(sizeof(n1),sizeof(n2))
     end subroutine 
     subroutine s4(x)
       import 
       import n1
       import n3
       integer x(sizeof(n1),sizeof(n2),sizeof(n3))
     end subroutine 
   end interface
   integer x1(8)
   integer x2(2,8)
   integer x3(8,2)
   integer x4(8,2,1)
   call s1(x1)
   call s2(x2)
   call s3(x3)
   call s4(x4)
end
call s
print *,'pass'
end
     subroutine s1(x)
       integer(8) ::n1
       integer x(sizeof(n1))
       if (sizeof(x)/=32)print *,'error-01'
     end subroutine 
     subroutine s2(x)
       integer(8) ::n1
       integer(2) ::n2
       integer x(sizeof(n2),sizeof(n1))
       if (sizeof(x)/=16*4)print *,'error-02'
     end subroutine 
     subroutine s3(x)
       integer(8) ::n1
       integer(2) ::n2
       integer x(sizeof(n1),sizeof(n2))
       if (sizeof(x)/=16*4)print *,'error-03'
     end subroutine 
     subroutine s4(x)
       integer(8) ::n1
       integer(2) ::n2
       integer(1) ::n3
       integer x(sizeof(n1),sizeof(n2),sizeof(n3))
       if (any(shape(x)/=(/8,2,1/)))print *,'error-04',size(x)
     end subroutine 
   


