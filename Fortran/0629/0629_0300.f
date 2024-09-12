      module mo 
      common /cmn/ l,i,j,a
      real*8 a(10)
      contains
        subroutine sub()
          do 10 i=1,10
            a(i) = a(i) + 1
10        continue
        print *,a
        call sub2(a)
        contains
          subroutine sub2(a)
          real*8 a(10)
            do 10 i=1,10
10        continue
          print *,a
          end subroutine
        end subroutine
      end module
      use mo

      do 10 i=1,10
        a(i) = 1
10    continue
      call sub()
      end
