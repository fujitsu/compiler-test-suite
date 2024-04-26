       logical(4) function func()
         func=.true.
         assign 10 to ii
         if (ii/=0) goto ii
   10    assign 20 to ii
         assign 30 to ii
         goto ii
   20    print *,'error2'
         return
   30    func=.false.      
       end function 

      subroutine sub()
        logical(4),external::func
        assign 20 to ii
        if (func()) print *,'error3'
   20   print *,'pass'
      end subroutine

      program main
        call sub()
      end program
