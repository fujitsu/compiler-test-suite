      subroutine sub1(c,b,ii,jj,i,j)
      character (len=*)::c
      character (len=2)::b
      print *,len(c)
      end
      character (len=2)::c
      character (len=2)::b
      call sub1('ab','ab',1,2,1,2)
      end
