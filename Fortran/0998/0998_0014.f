      module aa
        contains
        subroutine sub1()
          print *,'sub1'
          return 
          entry ent1()
          print *,'ent1'
        end subroutine 
        function fun1()
          fun1=1
          print *,'fun1'
          return
          entry fent1()
          fent1=2
          print *,'fent1'
        end function
      end module
      module bb
        contains
        subroutine sub1()
          print *,'sub1'
          return 
          entry ent1()
          print *,'ent1'
        end subroutine 
        function fun1()
          fun1=1
          print *,'fun1'
          return
          entry fent1()
          fent1=2
          print *,'fent1'
        end function
        subroutine sub()
          integer*4 ii
          ii = loc(sub1)
          ii = loc(ent1)
          ii = loc(fun1)
          ii = loc(fent1)
        end subroutine 
      end module
      use aa
      print *,loc(sub1)
      print *,loc(ent1)
      print *,loc(fun1)
      print *,loc(fent1)
      end
