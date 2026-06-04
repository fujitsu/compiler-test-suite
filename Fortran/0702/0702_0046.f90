 call s1
 print *,'pass'
 end
 module zccm
  character*(*),parameter,dimension(3)::xx='xx'
end 
 module mcc
  integer,parameter:: ri(1,1,1,1,1,2,3)=reshape((/1,2,3,4,5,6/),(/1,1,1,1,1,2,3/))
    interface chk
      module procedure chki8
    end interface
  contains
    subroutine chki8(a,iu)
      integer(8),dimension(:,:,:,:,:,:,:)::a
      integer(8),dimension(size(a,1),size(a,2),size(a,3),size(a,4),size(a,5),size(a,6),size(a,7))::ax
      integer(4)::iu
      if (any(a/=ri))print *,'fail'
      rewind iu
      read (iu,*) ax
      if (any(ax/=ri))print *,'fail'
    end subroutine
 end
 module m1
  use mcc,only:ri
   contains
     function ba(x1,x2,i,x3) result(ar)
      dimension i(:)
      integer(8),dimension(size(i)-1,size(i)-1,size(i)-1,size(i)-1,size(i)-1,size(i)+0,size(i)+1):: ar
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call xx(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     function bax(i,x1,x2,x3) result(ar)
      dimension i(:)
      integer(8),dimension(size(i)-1,size(i)-1,size(i)-1,size(i)-1,size(i)-1,size(i)+0,size(i)+1):: ar
     entry    baax(x1,i,x2,x3) result(ar)
     entry    baaax(x1,x2,i,x3) result(ar)
     entry    baaaax(x1,x2,x3,i) result(ar)
      character*(*) x1(:),x2(:),x3(:)
      ar=ri
      call xx(x1,x2,x3)
      if (any(i/=(/4,5/)))print *,'fail'
     end function
     subroutine xx(x1,x2,x3)
      character*(*) x1(:),x2(:),x3(:)
      if (len(x1)/=2)print *,'fail'
      if (len(x2)/=2)print *,'fail'
      if (len(x3)/=2)print *,'fail'
      if (size(x1)/=3)print *,'fail'
      if (size(x2)/=3)print *,'fail'
      if (size(x3)/=3)print *,'fail'
      if (any(x1/='xx'))print *,'fail'
    end subroutine
 end
 subroutine s1
  use zccm
  integer,parameter,dimension(2)::w2=(/4,5/)
  iu=11;k3=3
  call ss2;iu=iu+1
  contains
  subroutine ss2
  use mcc,only:ri,chk
  use m1,only:aa=>ba,aax=>bax,aaax=>baax,aaaax=>baaax,aaaaax=>baaaax
  integer(8) bb(1,1,1,1,1,2,3)
  integer za(k3,4,5)
  type z
  integer za
  end type
  type(z)::y(k3,4,5)

  if (any(aa(xx,xx,w2,xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,w2,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,w2,xx)
  call chk(aa(xx,xx,w2,xx),iu)
  bb=aa(xx,xx,w2,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(w2,xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(w2,xx,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(w2,xx,xx,xx)
  call chk(aax(w2,xx,xx,xx),iu)
  bb=aax(w2,xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,w2,xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,w2,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaax(xx,w2,xx,xx)
  call chk(aaax(xx,w2,xx,xx),iu)
  bb=aaax(xx,w2,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,w2,xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,w2,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,w2,xx)
  call chk(aaaax(xx,xx,w2,xx),iu)
  bb=aaaax(xx,xx,w2,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,w2)/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,w2))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,w2)
  call chk(aaaaax(xx,xx,xx,w2),iu)
  bb=aaaaax(xx,xx,xx,w2)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  za(k3,4,k3+1:5)=(/4,5/)
  if (any(aa(xx,xx,za(k3,4,k3+1:5),xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,za(k3,4,k3+1:5),xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,za(k3,4,k3+1:5),xx)
  call chk(aa(xx,xx,za(k3,4,k3+1:5),xx),iu)
  bb=aa(xx,xx,za(k3,4,k3+1:5),xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(za(k3,4,k3+1:5),xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(za(k3,4,k3+1:5),xx,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(za(k3,4,k3+1:5),xx,xx,xx)
  call chk(aax(za(k3,4,k3+1:5),xx,xx,xx),iu)
  bb=aax(za(k3,4,k3+1:5),xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,za(k3,4,k3+1:5),xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,za(k3,4,k3+1:5),xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaax(xx,za(k3,4,k3+1:5),xx,xx)
  call chk(aaax(xx,za(k3,4,k3+1:5),xx,xx),iu)
  bb=aaax(xx,za(k3,4,k3+1:5),xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,za(k3,4,k3+1:5),xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,za(k3,4,k3+1:5),xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,za(k3,4,k3+1:5),xx)
  call chk(aaaax(xx,xx,za(k3,4,k3+1:5),xx),iu)
  bb=aaaax(xx,xx,za(k3,4,k3+1:5),xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,za(k3,4,k3+1:5))/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,za(k3,4,k3+1:5)))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,za(k3,4,k3+1:5))
  call chk(aaaaax(xx,xx,xx,za(k3,4,k3+1:5)),iu)
  bb=aaaaax(xx,xx,xx,za(k3,4,k3+1:5))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  y(k3,4,k3+1:5)%za=(/4,5/)
  if (any(aa(xx,xx,y(k3,4,4:k3+2)%za,xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,y(k3,4,4:k3+2)%za,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,y(k3,4,4:k3+2)%za,xx)
  call chk(aa(xx,xx,y(k3,4,4:k3+2)%za,xx),iu)
  bb=aa(xx,xx,y(k3,4,4:k3+2)%za,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(y(k3,4,4:k3+2)%za,xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(y(k3,4,4:k3+2)%za,xx,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(y(k3,4,4:k3+2)%za,xx,xx,xx)
  call chk(aax(y(k3,4,4:k3+2)%za,xx,xx,xx),iu)
  bb=aax(y(k3,4,4:k3+2)%za,xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,y(k3,4,4:k3+2)%za,xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,y(k3,4,4:k3+2)%za,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaax(xx,y(k3,4,4:k3+2)%za,xx,xx)
  call chk(aaax(xx,y(k3,4,4:k3+2)%za,xx,xx),iu)
  bb=aaax(xx,y(k3,4,4:k3+2)%za,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,y(k3,4,4:k3+2)%za,xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,y(k3,4,4:k3+2)%za,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,y(k3,4,4:k3+2)%za,xx)
  call chk(aaaax(xx,xx,y(k3,4,4:k3+2)%za,xx),iu)
  bb=aaaax(xx,xx,y(k3,4,4:k3+2)%za,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,y(k3,4,4:k3+2)%za)/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,y(k3,4,4:k3+2)%za))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,y(k3,4,4:k3+2)%za)
  call chk(aaaaax(xx,xx,xx,y(k3,4,4:k3+2)%za),iu)
  bb=aaaaax(xx,xx,xx,y(k3,4,4:k3+2)%za)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aa(xx,xx,zf(char(2)),xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,zf(char(2)),xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,zf(char(2)),xx)
  call chk(aa(xx,xx,zf(char(2)),xx),iu)
  bb=aa(xx,xx,zf(char(2)),xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(zf(char(2)),xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(zf(char(2)),xx,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(zf(char(2)),xx,xx,xx)
  call chk(aax(zf(char(2)),xx,xx,xx),iu)
  bb=aax(zf(char(2)),xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,zf(char(2)),xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,zf(char(2)),xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaax(xx,zf(char(2)),xx,xx)
  call chk(aaax(xx,zf(char(2)),xx,xx),iu)
  bb=aaax(xx,zf(char(2)),xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,zf(char(2)),xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,zf(char(2)),xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,zf(char(2)),xx)
  call chk(aaaax(xx,xx,zf(char(2)),xx),iu)
  bb=aaaax(xx,xx,zf(char(2)),xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,zf(char(2)))/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,zf(char(2))))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,zf(char(2)))
  call chk(aaaaax(xx,xx,xx,zf(char(2))),iu)
  bb=aaaaax(xx,xx,xx,zf(char(2)))
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  y(k3,4,4:k3+2)%za=(/12,15/)
  if (any(aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)/=ri))print *,'fail'
  if (any(shape(aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)
  call chk(aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx),iu)
  bb=aa(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx)/=ri))print *,'fail'
  if (any(shape(aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx)
  call chk(aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx),iu)
  bb=aax(y(k3,4,k3+1:5)%za/k3,xx,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx)/=ri))print *,'fail'
  if (any(shape(aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx)
  call chk(aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx),iu)
  bb=aaax(xx,y(k3,4,k3+1:5)%za/k3,xx,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)/=ri))print *,'fail'
  if (any(shape(aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)
  call chk(aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx),iu)
  bb=aaaax(xx,xx,y(k3,4,k3+1:5)%za/k3,xx)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  if (any(aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3)/=ri))print *,'fail'
  if (any(shape(aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3))/=(/1,1,1,1,1,2,3/)))print *,'fail'
  write(iu,*)aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3)
  call chk(aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3),iu)
  bb=aaaaax(xx,xx,xx,y(k3,4,k3+1:5)%za/k3)
  if (any(bb/=ri))print *,'fail'
  iu=iu+1
  end subroutine
  function zf(c)
  character*(*) c
  integer zf(ichar(c))
  zf=(/ichar(c)+2,5/)
  end function
end
