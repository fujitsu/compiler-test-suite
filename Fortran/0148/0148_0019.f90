  SUBROUTINE x(k,c1,c2,c3)
    CHARACTER(1),INTENT(out):: c1(k,k+1,k+2)
    CHARACTER(1),INTENT(out):: c2(k,k+1,k+2)
    CHARACTER(1),INTENT(out):: c3(k,k+1,k+2)
     call set(c1,c2,c3)
write(9,*) c1
write(9,*) c2
write(9,*) c3
contains
subroutine set(c1,c2,c3)
character(*)::c1(:,:,:),c2(:,:,:),c3(:,:,:)
c1='1'
c2='1'
c3='1'
end subroutine
  END
    CHARACTER(1):: c1(2,3,4)
    CHARACTER(1):: c2(2,3,4)
    CHARACTER(1):: c3(2,3,4)
call x(2,c1,c2,c3)
if (c1(1,1,1)/='1') print *,101
if (c1(2,3,4)/='1') print *,102
if (c2(1,1,1)/='1') print *,121
if (c2(2,3,4)/='1') print *,122
if (c3(1,1,1)/='1') print *,131
if (c3(2,3,4)/='1') print *,132
print *,'pass'
end
