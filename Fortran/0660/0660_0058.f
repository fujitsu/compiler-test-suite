      module mod1  
       contains
        subroutine sub1(i)
        i=i+1          
        end subroutine
      end module
      module mod2
        use mod1,sub2=>sub1
      end module
      module mod3
        use mod1,sub3=>sub1
        use mod2,sub4=>sub2
      end module
      use mod1
      use mod2
      use mod3
       interface ss1
         module procedure sub1
       end interface
       interface ss2
         module procedure sub2
       end interface
       interface ss3
         module procedure sub3
       end interface
       interface ss4
         module procedure sub4
       end interface
      i=0
      call sub1(i)
      call sub2(i)
      call ss1(i)
      call ss2(i)
      call ss3(i)
      call ss4(i)
      if (i.ne.6) print *,'err'
      print *,'pass'
      end
