      subroutine sub2 ()
      integer,parameter::n=2
      integer,dimension(n,n,n)::d,e
      read(1,*) (((d(i,j,k),e(i,j,k),i=1,n),j=1,n),k=1,n)
      end
      print *,'pass'
      end
