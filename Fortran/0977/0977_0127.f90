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
call t(v)
print *,'pass'
contains
subroutine t(v)
type(x),pointer::v
intent(in)::v
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
i=1;j=2;k=1
call x010(v%pis)
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x020(v%pia(2))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x020(v%pia(j))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x021(v%pia)
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x021(v%pia(:))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x021(v%pia(1:2))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x021(v%pia(i:j))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x021(v%pia(1:2:1))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x021(v%pia(i:j:k))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x030(v%pcs)
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x031(v%pcs(2:3))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x031(v%pcs(j:i+j))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x032(v%pca(2))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x032(v%pca(j))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x033(v%pca(2)(2:3))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x033(v%pca(2)(j:3))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x033(v%pca(j)(2:3))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x033(v%pca(j)(j:3))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x034(v%pca)
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x034(v%pca(:))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x034(v%pca(1:2))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x035(v%pca(:)(2:3))
v%pis=2;v%pia(2)=2;v%pcs='abc';v%pca(2)='abc'
call x035(v%pca(1:2)(2:3))
end subroutine 

subroutine s(pis,pia,pcs,pca)
integer,pointer :: pis
integer,pointer :: pia(:)
character(3),pointer :: pcs
character(3),pointer :: pca(:)
intent(in)::pis,pia,pcs,pca
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
i=1;j=2;k=1
call x010(pis)
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x020(pia(2))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x020(pia(j))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x021(pia)
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x021(pia(:))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x021(pia(1:2))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x021(pia(i:j))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x021(pia(1:2:1))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x021(pia(i:j:k))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x030(pcs)
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x031(pcs(2:3))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x031(pcs(j:i+j))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x032(pca(2))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x032(pca(j))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x033(pca(2)(2:3))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x033(pca(2)(j:3))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x033(pca(j)(2:3))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x033(pca(j)(j:3))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x034(pca)
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x034(pca(:))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x034(pca(1:2))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x035(pca(:)(2:3))
pis=2;pia(2)=2;pcs='abc';pca(2)='abc'
call x035(pca(1:2)(2:3))
end subroutine
subroutine x010(i)
integer,intent(inout):: i
if (i/=2)write(6,*) "NG"
i=3
end subroutine
subroutine x020(i)
integer,intent(inout):: i
if (i/=2)write(6,*) "NG"
i=3
end subroutine
subroutine x021(i)
integer,intent(inout):: i(2)
if (i(2)/=2)write(6,*) "NG"
i=3
end subroutine
subroutine x030(c)
character(*),intent(inout):: c
if (c/='abc')write(6,*) "NG"
c='xyz'
end subroutine
subroutine x031(c)
character(*),intent(inout):: c
if (c/='bc')write(6,*) "NG"
c='xyz'
end subroutine
subroutine x032(c)
character(*),intent(inout):: c
if (c/='abc')write(6,*) "NG"
c='xyz'
end subroutine
subroutine x033(c)
character(*),intent(inout):: c
if (c/='bc')write(6,*) "NG"
c='xyz'
end subroutine
subroutine x034(c)
character(*),intent(inout):: c(2)
if (c(2)/='abc')write(6,*) "NG"
c='xyz'
end subroutine
subroutine x035(c)
character(*),intent(inout):: c(2)
if (c(2)/='bc')write(6,*) "NG"
c='xyz'
end subroutine
end
