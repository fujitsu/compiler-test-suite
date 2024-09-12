      program main
      interface aaa
        subroutine sub1(i,j,k)
        integer ,optional ::i,j,k
        end subroutine
        subroutine sub2(i,j,k)
        integer ,optional ::i,j
        end subroutine
        subroutine sub3(i,j,k)
        integer ,optional ::k
        end subroutine
      end interface
      call sub1(i,j,k)
      call sub2(i,j,k)
      call sub2(i=i,k=k)
      call sub3(i=i,j=j)
      call insub(i,j,k)
      if (i.ne.15) print *,'err 1 '
      if (j.ne.28) print *,'err 1 '
      if (k.ne.42) print *,'err 1 '
      print *,'pass'
      contains 
        subroutine insub(ii,jj,kk)
        call sub1(ii,jj,kk)
        call sub2(ii,jj,kk)
        call sub2(j=jj,k=kk)
        call sub3(i=ii,j=jj,k=kk)
        end subroutine
      end
      subroutine sub1(i,j,k)
      integer ,optional ::i,j,k
      if (present(i)) i=1
      if (present(j)) j=2
      if (present(k)) k=3
      end
      subroutine sub2(i,j,k)
      integer i,j,k
      optional j,i
      k=k+3
      if (present(j)) j=j+2
      if (present(i)) i=i+3
      end
      subroutine sub3(i,j,k)
      integer i,j,k
      optional k
      i=i+11
      j=j+22
      if (present(k)) k=k+33
      end
