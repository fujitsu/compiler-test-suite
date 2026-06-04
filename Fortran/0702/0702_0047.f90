 call s1
 print *,'pass'
 end
 module mcc
  integer,parameter:: ri(1,1,1,1,1,2,3)=reshape((/1,2,3,4,5,6/),(/1,1,1,1,1,2,3/))
    interface chk
      module procedure chki8
    end interface
  contains
    function   chki8(a,iu) result(axzz)
      integer(8),dimension(:,:,:,:,:,:,:)::a
      integer(8),dimension(size(a,1),size(a,2),size(a,3),size(a,4),size(a,5),size(a,6),size(a,7))::ax
      logical(8),dimension(size(a,1),size(a,2),size(a,3),size(a,4),size(a,5),size(a,6),size(a,7))::axzz
      integer(4)::iu
      if (any(a/=ri))print *,'fail'
      rewind iu
      read (iu,*) ax
      if (any(ax/=ri))print *,'fail'
      axzz=.not..true.
      if (any(shape(axzz)/=(/1,1,1,1,1,2,3/)))print *,'fail'
    end function 
 end
 module m1
  use mcc,only:ri
   contains
     function ba(x1,x2,x3,x4,x5,x6,x7) result(ar)
      integer,dimension(:)::x1,x2,x3,x4,x5,x6,x7
      integer(8),dimension(size(x1),size(x2),size(x3),size(x4),size(x5),size(x6),size(x7)):: ar
      ar=ri
      if (any(x6/=(/4,5/)))print *,'fail'
     end function
     function bax(x1,x2,x3,x4,x5,x6,x7) result(ar)
     entry    baax(x1,x2,x3,x4,x5,x6,x7) result(ar)
      integer,dimension(:)::x1,x2,x3,x4,x5,x6,x7
      integer(8),dimension(size(x1),size(x2),size(x3),size(x4),size(x5),size(x6),size(x7)):: ar
      if (any(x6/=(/4,5/)))print *,'fail'
      ar=ri
     end function
 end
 subroutine s1
  integer,parameter,dimension(2)::w2=(/4,5/)
  iu=11;k3=3
  call ss2;iu=iu+1
  contains
  subroutine ss2
  use mcc,only:ri,chk
  use m1,only:aa=>ba,aax=>bax,aaax=>baax
  integer e1(1),e2(1),e3(1),e4(1),e5(1),e7(3)
  integer(8) bb(1,1,1,1,1,2,3)
  integer za(k3,4,5)
  type z
  integer za(2)
  end type
  type(z)::y(k3,4,5)

  if (any(aa(e1,e2,e3,e4,e5,w2,e7)/=ri))print *,'fail'
  if (any(shape(aa(e1,e2,e3,e4,e5,w2,e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(e1,e2,e3,e4,e5,w2,e7)
  if (any(chk(aa(e1,e2,e3,e4,e5,w2,e7),iu)))print *,'fail'
  bb=aa(e1,e2,e3,e4,e5,w2,e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(e1,e2,e3,e4,e5,w2,e7)/=ri))print *,'fail'
  if (any(shape(aax(e1,e2,e3,e4,e5,w2,e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(e1,e2,e3,e4,e5,w2,e7)
  if (any(chk(aax(e1,e2,e3,e4,e5,w2,e7),iu)))print *,'fail'
  bb=aax(e1,e2,e3,e4,e5,w2,e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(e1,e2,e3,e4,e5,w2,e7)/=ri))print *,'fail'
  if (any(shape(aaax(e1,e2,e3,e4,e5,w2,e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaax(e1,e2,e3,e4,e5,w2,e7)
  if (any(chk(aaax(e1,e2,e3,e4,e5,w2,e7),iu)))print *,'fail'
  bb=aaax(e1,e2,e3,e4,e5,w2,e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  za(k3,4,k3+1:5)=(/4,5/)
  if (any(aa(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7)/=ri))print *,'fail'
  if (any(shape(aa(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7)
  if (any(chk(aa(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7),iu)))print *,'fail'
  bb=aa(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7)/=ri))print *,'fail'
  if (any(shape(aax(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7)
  if (any(chk(aax(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7),iu)))print *,'fail'
  bb=aax(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7)/=ri))print *,'fail'
  if (any(shape(aaax(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaax(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7)
  if (any(chk(aaax(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7),iu)))print *,'fail'
  bb=aaax(e1,e2,e3,e4,e5,za(3,4,4:k3+2),e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  y(k3,4,5)%za=w2
  if (any(aa(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7)/=ri))print *,'fail'
  if (any(shape(aa(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7)
  if (any(chk(aa(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7),iu)))print *,'fail'
  bb=aa(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7)/=ri))print *,'fail'
  if (any(shape(aax(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7)
  if (any(chk(aax(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7),iu)))print *,'fail'
  bb=aax(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7)/=ri))print *,'fail'
  if (any(shape(aaax(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaax(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7)
  if (any(chk(aaax(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7),iu)))print *,'fail'
  bb=aaax(e1,e2,e3,e4,e5,y(k3,4,k3+2)%za,e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aa(e1,e2,e3,e4,e5,zf(char(2)),e7)/=ri))print *,'fail'
  if (any(shape(aa(e1,e2,e3,e4,e5,zf(char(2)),e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(e1,e2,e3,e4,e5,zf(char(2)),e7)
  if (any(chk(aa(e1,e2,e3,e4,e5,zf(char(2)),e7),iu)))print *,'fail'
  bb=aa(e1,e2,e3,e4,e5,zf(char(2)),e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(e1,e2,e3,e4,e5,zf(char(2)),e7)/=ri))print *,'fail'
  if (any(shape(aax(e1,e2,e3,e4,e5,zf(char(2)),e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(e1,e2,e3,e4,e5,zf(char(2)),e7)
  if (any(chk(aax(e1,e2,e3,e4,e5,zf(char(2)),e7),iu)))print *,'fail'
  bb=aax(e1,e2,e3,e4,e5,zf(char(2)),e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(e1,e2,e3,e4,e5,zf(char(2)),e7)/=ri))print *,'fail'
  if (any(shape(aaax(e1,e2,e3,e4,e5,zf(char(2)),e7))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaax(e1,e2,e3,e4,e5,zf(char(2)),e7)
  if (any(chk(aaax(e1,e2,e3,e4,e5,zf(char(2)),e7),iu)))print *,'fail'
  bb=aaax(e1,e2,e3,e4,e5,zf(char(2)),e7)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
  function zf(c)
  character*(*) c
  integer zf(ichar(c))
  zf=(/ichar(c)+2,5/)
  end function
end
