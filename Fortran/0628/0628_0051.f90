integer,pointer :: pis
integer,pointer :: pia(:)
character(3),pointer :: pcs
character(3),pointer :: pca(:)
type x
  integer,pointer :: pis
  integer,pointer :: pia(:)
  character(3),pointer :: pcs
  character(3),pointer :: pca(:)
end type 
type(x),pointer::v
allocate(pis,pia(2),pcs,pca(2))
allocate(v)
allocate(v%pis,v%pia(2),v%pcs,v%pca(2))
pis=1;pia(:)=1;pcs='123';pca(:)='123'
v%pis=1;v%pia(:)=1;v%pcs='123';v%pca(:)='123'
call s(pis,pia,pcs,pca)
print *,'pass'
contains

subroutine s(pis,pia,pcs,pca)
integer,pointer :: pis
integer,pointer :: pia(:)
character(3),pointer :: pcs
character(3),pointer :: pca(:)
intent(in)::pis,pia,pcs,pca
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
i=1;j=2;k=1
call x021(pia(:))
end subroutine
subroutine x021(i)
integer,intent(out):: i(2)
i=3
end subroutine
end
