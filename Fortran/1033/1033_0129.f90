      program main
       character*10 d
        call sub(d)
        print *,'pass'
      end 

      subroutine sub(d)
       character*10 c,func,d
        c=func()
        d=c
      end

      character*10 function func()
        func='abcdefghij'
      end
