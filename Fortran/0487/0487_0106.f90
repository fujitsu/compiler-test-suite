 subroutine sub(d1)
       interface
         function f1()
         integer :: f1
         end function
         function f2(d)
         real :: f2,d
         end function
       end interface
      procedure(f2) :: d1
      procedure(f1),pointer :: prc
      interface gnr
        procedure :: prc,d1
      end interface
      prc=>f1
      if (gnr()/=1) print*,101
      if (gnr(2.0)/=2.0) print*,102
end
       interface
         function f2(d)
         real :: f2,d
         end function
       end interface
call sub(f2)
print *,'pass'
       end

         function f1()
         integer :: f1
           f1=1
         end function
         function f2(d)
         real :: f2,d
         f2=d
         end function
