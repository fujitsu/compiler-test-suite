integer,pointer :: pis11
integer,pointer :: pia11(:)
character(3),pointer :: pcs11
character(3),pointer :: pca11(:)
integer,pointer :: pis12
integer,pointer :: pia12(:)
character(3),pointer :: pcs12
character(3),pointer :: pca12(:)
integer,pointer :: pis13
integer,pointer :: pia13(:)
character(3),pointer :: pcs13
character(3),pointer :: pca13(:)
type x
  integer,pointer :: pis11
  integer,pointer :: pia11(:)
  character(3),pointer :: pcs11
  character(3),pointer :: pca11(:)
  integer,pointer :: pis12
  integer,pointer :: pia12(:)
  character(3),pointer :: pcs12
  character(3),pointer :: pca12(:)
  integer,pointer :: pis13
  integer,pointer :: pia13(:)
  character(3),pointer :: pcs13
  character(3),pointer :: pca13(:)
end type 
type(x),pointer::v
allocate(pis11,pia11(2),pcs11,pca11(2))
allocate(pis12,pia12(2),pcs12,pca12(2))
allocate(pis13,pia13(2),pcs13,pca13(2))
allocate(v)
allocate(v%pis11,v%pia11(2),v%pcs11,v%pca11(2))
allocate(v%pis12,v%pia12(2),v%pcs12,v%pca12(2))
allocate(v%pis13,v%pia13(2),v%pcs13,v%pca13(2))
pis11=1;pia11(:)=1;pcs11='123';pca11(:)='123'
pis12=1;pia12(:)=1;pcs12='123';pca12(:)='123'
pis13=1;pia13(:)=1;pcs13='123';pca13(:)='123'
v%pis11=1;v%pia11(:)=1;v%pcs11='123';v%pca11(:)='123'
v%pis12=1;v%pia12(:)=1;v%pcs12='123';v%pca12(:)='123'
v%pis13=1;v%pia13(:)=1;v%pcs13='123';v%pca13(:)='123'
call s(pis11,pia11,pcs11,pca11,&
       pis12,pia12,pcs12,pca12,&
       pis13,pia13,pcs13,pca13)
call t(v)
print *,'pass'
contains
subroutine t(v)
type(x),pointer::v
intent(in)::v
v%pis11=1;v%pia11(:)=1;v%pcs11='123';v%pca11(:)='123'
v%pis12=1;v%pia12(:)=1;v%pcs12='123';v%pca12(:)='123'
v%pis13=1;v%pia13(:)=1;v%pcs13='123';v%pca13(:)='123'
i=1;j=2;k=1
call x010(v%pis11, 1,v%pis12,v%pis13,&
          v%pia11(:),1, v%pia12(:),v%pia13(:),&
          v%pcs11,1,v%pcs12,v%pcs13,&
          v%pca11(:)(2:3),1,v%pca12(:)(2:3),v%pca13(:)(2:3))
end subroutine 

subroutine s &
      (pis11,pia11,pcs11,pca11,&
       pis12,pia12,pcs12,pca12,&
       pis13,pia13,pcs13,pca13)
integer,pointer :: pis11,pis12,pis13
integer,pointer :: pia11(:),pia12(:),pia13(:)
character(*),pointer :: pcs11,pcs12,pcs13
character(*),pointer :: pca11(:),pca12(:),pca13(:)
intent(in)::pis11,pia11,pcs11,pca11
intent(in)::pis12,pia12,pcs12,pca12
intent(in)::pis13,pia13,pcs13,pca13
pis11=1;pia11(:)=1;pcs11='123';pca11(:)='123'
pis12=1;pia12(:)=1;pcs12='123';pca12(:)='123'
pis13=1;pia13(:)=1;pcs13='123';pca13(:)='123'
i=1;j=2;k=1
call x010(pis11, 1,pis12,pis13,&
          pia11(:),1, pia12(:),pia13(:),&
          pcs11,1,pcs12,pcs13,&
          pca11(:)(2:3),1,pca12(:)(2:3),pca13(:)(2:3))
end subroutine
subroutine x010(i1,n1,j1,k1,&
                i2,n2,j2,k2,&
                i4,n4,j4,k4,&
                i7,n7,j7,k7) 
integer,intent(out):: i1,j1,k1
integer,intent(out):: i2(2),j2(2),k2(2)
character(*),intent(out):: i4,j4,k4
character(*),intent(out):: i7(2),j7(2),k7(2)
i1=3;j1=3;k1=n1
i2=3;j2=3;k2=n2
i4='xyz'//char(n4)
j4='xyz'//char(n4)
k4='xyz'//char(n4)
i7='xyz'//char(n7)
j7='xyz'//char(n7)
k7='xyz'//char(n7)
end subroutine
end
