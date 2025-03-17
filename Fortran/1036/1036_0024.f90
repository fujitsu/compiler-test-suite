integer,target::a(5,5)=reshape((/(k,k=1,25)/),(/5,5/))
integer,pointer::f1(:,:),f2(:,:)
allocate(f1(5,5),f2(5,5));f1=a;f2=a
call sub(f1,f2)
print *,'pass'
end
subroutine sub(f1,f2)
integer f1(*),f2(*)
  if (any((/f1(1:25)/)/=(/(k,k=1,25)/)))print *,'error-4'
  if (any((/f2(1:25)/)/=(/(k,k=1,25)/)))print *,'error-5'
end subroutine
