 module m1
 contains
      subroutine sub1 (i,j,k)
      integer,target::i,j,k
      namelist /nam1/i,j,k
      write(4,nam1)
      i=i+1
      j=j+1
      k=k+1
end subroutine
      subroutine sub2 (i,j,k)
      integer,pointer::i,j,k
      integer,parameter::n=2
      namelist /nam1/i,j,k
      write(4,nam1)
      i=i+1
      j=j+1
      k=k+1
end subroutine
      end
use m1
      integer,target::i,j,k
      integer,pointer::ii,jj,kk
allocate(ii,jj,kk)
i=1;j=2;k=3
ii=11;jj=12;kk=13
call sub1(i,j,k)
if (i/=2) print *,101
if (j/=3) print *,102
if (k/=4) print *,103
call sub2(ii,jj,kk)
if (ii/=12) print *,201
if (jj/=13) print *,202
if (kk/=14) print *,203
  rewind 4
call chk
      print *,'pass'
end
subroutine chk
      namelist /nam1/i,j,k
read(4,nam1)
if (i/=1) print *,1011
if (j/=2) print *,1021
if (k/=3) print *,1031
read(4,nam1)
if (i/=11) print *,2011
if (j/=12) print *,2021
if (k/=13) print *,2031
      end
