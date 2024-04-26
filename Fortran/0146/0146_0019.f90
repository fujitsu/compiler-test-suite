 module m1
 contains
      subroutine sub1 (i,j,k)
      integer,target::i,j,k
      integer,parameter::n=2
      integer,dimension(n,n,n)::d,e
      d=reshape([1,2,3,4,5,6,7,8],[2,2,2])
      e=d
      write(1,*) (((d(i,j,k),e(i,j,k),i=1,n),j=1,n),k=1,n)
end subroutine
      subroutine sub2 (i,j,k)
      integer,pointer::i,j,k
      integer,parameter::n=2
      integer,dimension(n,n,n)::d,e
      d=10+reshape([1,2,3,4,5,6,7,8],[2,2,2])
      e=d
      write(1,*) (((d(i,j,k),e(i,j,k),i=1,n),j=1,n),k=1,n)
end subroutine
      end
use m1
      integer,target::i,j,k
      integer,pointer::ii,jj,kk
integer x(16)
allocate(ii,jj,kk)
call sub1(i,j,k)
if (i/=3) print *,101
if (j/=3) print *,102
if (k/=3) print *,103
call sub2(ii,jj,kk)
if (ii/=3) print *,201
if (jj/=3) print *,202
if (kk/=3) print *,203
  rewind 1
read(1,*) x
if (any(x/=       [1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8])) print *,501
read(1,*) x
if (any(x/= 10+   [1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8])) print *,502
      print *,'pass'
      end

