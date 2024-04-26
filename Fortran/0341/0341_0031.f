      module mo 
      common /cmn/ l,i,j,a
      real*8 a(10,10,10)
      contains
        subroutine sub()
          do 10 i=1,10
          do 10 j=1,10
          do 10 k=1,10
            a(i,j,k) = a(i,j,k) + 1
10        continue
        print *,a
        call sub2(a)
        contains
          subroutine sub2(a)
          real*8 a(10,10,10)
            do 10 i=1,10
            do 10 j=1,10
            do 10 k=1,10
              a(i,j,k) = a(i,j,k) + 1
10        continue
          print *,a
          end subroutine
        end subroutine
      end module
c
      use mo
      equivalence (n,m)
      n=1
      do 10 i=m,10
      do 10 j=m,10
      do 10 k=m,10
        a(i,j,k) = j
10    continue
      call sub()
      end
