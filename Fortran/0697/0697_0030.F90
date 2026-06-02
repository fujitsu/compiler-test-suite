subroutine s01(e1,e2,e3)
parameter(i=2)
character(*),parameter::f1(2)='abcd'
character(*),parameter::f2(2,3)='abcd'
character(*),parameter::f3(2,3,4)='abcd'
integer:: e1(2),e2(2,3),e3(2,3,4)
parameter (i01=sizeof(x=e1))
parameter (i02=sizeof(X=e2))
parameter (i03=sizeof(x=e3))
parameter (i04=sizeof(X=e1(:)))
parameter (i05=sizeof(X=e2(:,:)))
parameter (i06=sizeof(X=e3(:,:,:)))
parameter (i07=sizeof(X=e1(2)))
parameter (i08=sizeof(X=e2(2,2)))
parameter (i09=sizeof(X=e3(2,2,i)))
parameter (k01=sizeof(X=f1))
parameter (k02=sizeof(X=f2))
parameter (k03=sizeof(X=f3))
parameter (k04=sizeof(X=f1(:)))
parameter (k05=sizeof(X=f2(:,:)))
parameter (k06=sizeof(X=f3(:,:,:)))
parameter (k07=sizeof(X=e1(2)))
parameter (k08=sizeof(X=e2(2,2)))
parameter (k09=sizeof(X=e3(2,2,i)))
parameter (n01=kind(sizeof(X=e1)))
parameter (n02=kind(sizeof(X=e2)))
parameter (n03=kind(sizeof(X=e3)))
parameter(kk=8)

if (n01/=kk)print *,"fail"
if (n02/=kk)print *,"fail"
if (n03/=kk)print *,"fail"
if (i01/=8)print *,"fail"
if (i02/=24)print *,"fail"
if (i03/=96)print *,"fail"
if (i04/=8)print *,"fail"
if (i05/=24)print *,"fail"
if (i06/=96)print *,"fail"
if (i07/=4)print *,"fail"
if (i08/=4)print *,"fail"
if (i09/=4)print *,"fail"
if (k01/=8)print *,"fail"
if (k02/=24)print *,"fail"
if (k03/=96)print *,"fail"
if (k04/=8)print *,"fail"
if (k05/=24)print *,"fail"
if (k06/=96)print *,"fail"
if (k07/=4)print *,"fail"
if (k08/=4)print *,"fail"
if (k09/=4)print *,"fail"
end
integer:: e1(2),e2(2,3),e3(2,3,4)
call       s01(e1,e2,e3)
call       s02(e1,e2,e3)
print *,'pass'
end
subroutine s02(e1,e2,e3)
parameter(i=2)
character(*),parameter::f1(2)='abcd'
character(*),parameter::f2(2,3)='abcd'
character(*),parameter::f3(2,3,4)='abcd'
integer:: e1(2),e2(2,3),e3(2,3,4)
parameter(kk=8)
i01=sizeof(X=e1)
i02=sizeof(X=e2)
i03=sizeof(X=e3)
i04=sizeof(X=e1(:))
i05=sizeof(X=e2(:,:))
i06=sizeof(X=e3(:,:,:))
i07=sizeof(X=e1(2))
i08=sizeof(X=e2(2,2))
i09=sizeof(X=e3(2,2,i))
k01=sizeof(X=f1)
k02=sizeof(X=f2)
k03=sizeof(X=f3)
k04=sizeof(X=f1(:))
k05=sizeof(x=f2(:,:))
k06=sizeof(X=f3(:,:,:))
k07=sizeof(X=e1(2))
k08=sizeof(X=e2(2,2))
k09=sizeof(X=e3(2,2,i))
n01=kind(sizeof(X=e1))
n02=kind(sizeof(X=e2))
n03=kind(sizeof(X=e3))

if (n01/=kk)print *,"fail"
if (n02/=kk)print *,"fail"
if (n03/=kk)print *,"fail"
if (i01/=8)print *,"fail"
if (i02/=24)print *,"fail"
if (i03/=96)print *,"fail"
if (i04/=8)print *,"fail"
if (i05/=24)print *,"fail"
if (i06/=96)print *,"fail"
if (i07/=4)print *,"fail"
if (i08/=4)print *,"fail"
if (i09/=4)print *,"fail"
if (k01/=8)print *,"fail"
if (k02/=24)print *,"fail"
if (k03/=96)print *,"fail"
if (k04/=8)print *,"fail"
if (k05/=24)print *,"fail"
if (k06/=96)print *,"fail"
if (k07/=4)print *,"fail"
if (k08/=4)print *,"fail"
if (k09/=4)print *,"fail"
end
