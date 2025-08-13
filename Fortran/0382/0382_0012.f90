subroutine s1(a,k1,k2)
integer a(:,:)
integer b(k1,k2)
b=reshape((/1,2,3,4,5,6/),(/3,2/))
!$omp parallel firstprivate(a,b)
write(3,*)'ARRAY SIZE=',size(a),size(b)
write(3,*)'ARRAY SIZEOF=',sizeof(a),sizeof(b)
write(3,*)'ASSUMED SHAPE ELEMNENT DISTANCE=',loc(a(2,1))-loc(a(1,1))
if (a(1,1)/=11)print *,101,a(1,1)
if (a(2,1)/=12)print *,102,a(2,1)
if (a(1,2)/=13)print *,103,a(1,2)
if (a(2,2)/=14)print *,104,a(2,2)
if (a(1,3)/=15)print *,105,a(1,3)
if (a(2,3)/=16)print *,106,a(2,3)
if (b(1,1)/=1)print *,201,b(1,1)
if (b(2,1)/=2)print *,202,b(2,1)
if (b(3,1)/=3)print *,203,b(3,1)
if (b(1,2)/=4)print *,204,b(1,2)
if (b(2,2)/=5)print *,205,b(2,2)
if (b(3,2)/=6)print *,206,b(3,3)
!$omp end parallel
end
interface
subroutine s1(a,k1,k2)
integer a(:,:)
integer b(k1,k2)
end subroutine
end interface
integer a(5,7)
a(2::2,2::2)=reshape((/1,2,3,4,5,6/),(/2,3/))+10
call s1(a(2::2,2::2),3,2)
print *,'pass'
end
