 call s1
 print *,'pass'
 end
 module m1
  real(16),parameter:: ri(2,3)=reshape((/1,2,3,4,5,6/),(/2,3/))
  character*(*),parameter,dimension(3)::xx='xx'
 end
 subroutine s1
  call ss1
  call ss2
 end
 subroutine ss1
   use m1
  integer,parameter,dimension(2)::w2=(/4,5/)
  integer(8) bb(2,3)
  type z
  integer za
  end type

  iu=11;k3=3
  if (any(aa(xx,xx,w2,xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,w2,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,w2,xx)
  call chk(aa(xx,xx,w2,xx),iu)
  bb=aa(xx,xx,w2,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(w2,xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(w2,xx,xx,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(w2,xx,xx,xx)
  call chk(aax(w2,xx,xx,xx),iu)
  bb=aax(w2,xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,w2,xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,w2,xx,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(xx,w2,xx,xx)
  call chk(aaax(xx,w2,xx,xx),iu)
  bb=aaax(xx,w2,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,w2,xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,w2,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,w2,xx)
  call chk(aaaax(xx,xx,w2,xx),iu)
  bb=aaaax(xx,xx,w2,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,w2)/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,w2))/=(/2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,w2)
  call chk(aaaaax(xx,xx,xx,w2),iu)
  bb=aaaaax(xx,xx,xx,w2)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
 contains
  function zf(c)
  character*(*) c
  integer zf(ichar(c))
  zf=(/ichar(c)+2,5/)
  end function
     function aa(x1,x2,i,x3) result(ar)
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call yy(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function aax(i,x1,x2,x3) result(ar)
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call yy(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function aaax(x1,i,x2,x3) result(ar)
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call yy(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function aaaax(x1,x2,i,x3) result(ar)
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call yy(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function aaaaax(x1,x2,x3,i) result(ar)
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call yy(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     subroutine yy(x1,x2,x3)
      character*(*) x1(:),x2(:),x3(:)
      if (len(x1)/=2)print *,'fail'
      if (len(x2)/=2)print *,'fail'
      if (len(x3)/=2)print *,'fail'
      if (ubound(x1,1)/=3)print *,'fail'
      if (ubound(x2,1)/=3)print *,'fail'
      if (ubound(x3,1)/=3)print *,'fail'
      if (any(x1/='xx'))print *,'fail'
    end subroutine
    subroutine chk(a,iu)
      integer(8),dimension(:,:)::a
      integer(8),dimension(ubound(a,1),ubound(a,2))::ax
      integer(4)::iu
      if (any(a/=ri))print *,'fail'
      rewind iu
      read (iu,*) ax
      if (any(ax/=ri))print *,'fail'
    end subroutine
 end
 subroutine ss2
   use m1
  integer,parameter,dimension(2)::w2=(/4,5/)
  integer(8) bb(2,3)
  type z
  integer za
  end type
interface
     function aa(x1,x2,i,x3) result(ar)
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      character*(*) x1(:),x2(:),x3(:)
     end function
     function aax(i,x1,x2,x3) result(ar)
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      character*(*) x1(:),x2(:),x3(:)
     end function
     function aaax(x1,i,x2,x3) result(ar)
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      character*(*) x1(:),x2(:),x3(:)
     end function
     function aaaax(x1,x2,i,x3) result(ar)
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      character*(*) x1(:),x2(:),x3(:)
     end function
     function aaaaax(x1,x2,x3,i) result(ar)
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      character*(*) x1(:),x2(:),x3(:)
     end function
     subroutine yy(x1,x2,x3)
      character*(*) x1(:),x2(:),x3(:)
    end subroutine
    subroutine chk(a,iu)
      integer(8),dimension(:,:)::a
      integer(8),dimension(ubound(a,1),ubound(a,2))::ax
      integer(4)::iu
    end subroutine
 end interface

  iu=21;k3=3
  if (any(aa(xx,xx,w2,xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,w2,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,w2,xx)
  call chk(aa(xx,xx,w2,xx),iu)
  bb=aa(xx,xx,w2,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(w2,xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(w2,xx,xx,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aax(w2,xx,xx,xx)
  call chk(aax(w2,xx,xx,xx),iu)
  bb=aax(w2,xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,w2,xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,w2,xx,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aaax(xx,w2,xx,xx)
  call chk(aaax(xx,w2,xx,xx),iu)
  bb=aaax(xx,w2,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,w2,xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,w2,xx))/=(/2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,w2,xx)
  call chk(aaaax(xx,xx,w2,xx),iu)
  bb=aaaax(xx,xx,w2,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,w2)/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,w2))/=(/2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,w2)
  call chk(aaaaax(xx,xx,xx,w2),iu)
  bb=aaaaax(xx,xx,xx,w2)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
  function zf(c)
  character*(*) c
  integer zf(ichar(c))
  zf=(/ichar(c)+2,5/)
  end function
     function aa(x1,x2,i,x3) result(ar)
      use m1
         interface
     subroutine yy(x1,x2,x3)
      character*(*) x1(:),x2(:),x3(:)
  end subroutine
         end interface
      dimension i(:)
      integer(8),dimension(ubound(i,1),3):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call yy(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function aax(i,x1,x2,x3) result(ar)
      use m1
      dimension i(:)
     entry    aaax(x1,i,x2,x3) result(ar)
     entry    aaaax(x1,x2,i,x3) result(ar)
         interface
     subroutine yy(x1,x2,x3)
      character*(*) x1(:),x2(:),x3(:)
  end subroutine
         end interface
     entry    aaaaax(x1,x2,x3,i) result(ar)
      integer(8),dimension(ubound(i,1),3):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call yy(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     subroutine yy(x1,x2,x3)
      character*(*) x1(:),x2(:),x3(:)
      if (len(x1)/=2)print *,'fail'
      if (len(x2)/=2)print *,'fail'
      if (len(x3)/=2)print *,'fail'
      if (ubound(x1,1)/=3)print *,'fail'
      if (ubound(x2,1)/=3)print *,'fail'
      if (ubound(x3,1)/=3)print *,'fail'
      if (any(x1/='xx'))print *,'fail'
    end subroutine
    subroutine chk(a,iu)
      use m1
      integer(8),dimension(:,:)::a
      integer(8),dimension(ubound(a,1),ubound(a,2))::ax
      integer(4)::iu
      if (any(a/=ri))print *,'fail'
      rewind iu
      read (iu,*) ax
      if (any(ax/=ri))print *,'fail'
    end subroutine
