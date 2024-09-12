subroutine t1(f2)
 interface  
   function fp()
     character(2),pointer::fp
   end function
 end interface
 procedure(fp)        ::f2
 if (f2()/='xy')print *,'error-08'
end subroutine

subroutine t0
 interface
      subroutine t1(f2)
       interface  
         function fp()
           character(2),pointer::fp
         end function
       end interface
       procedure(fp)        ::f2
       end subroutine
 end interface
 interface  
   function fp()
     character(2),pointer::fp
   end function
 end interface
 procedure(fp)        ::f2
 call t1(f2)
end subroutine

call t0
print *,'pass'
end

   function fp() result(f)
   entry    f2() result(f)
     character(2),pointer::f
     allocate(f)
     f='xy'
   end function
