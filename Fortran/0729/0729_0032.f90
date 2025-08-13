 call s1
 print *,'pass'
 end
 subroutine s1
 real*8 u(1,4,5,1,1)
 integer uu(1,5,1,1)
 integer xu(4,5)
 u=reshape((/1,2,3,4,8,7,6,5,9,10,11,12,16,15,14,13,17,18,19,20/),(/1,4,5,1,1/))
 write(84,*)maxloc(u,dim=2)
 uu=maxloc(u,dim=2)
 write(84,*)uu
 call sub(maxloc(u,dim=2))
 write(84,*)minloc(u,dim=2)
 uu=minloc(u,dim=2)
 write(84,*)uu
 call sub(minloc(u,dim=2))
 u=reshape((/20,1,19,2,18,3,17,4,16,5,15,6,14,7,13,8,12,9,11,10/),(/1,4,5,1,1/))
 write(84,*)maxloc(u,dim=3)
 uu(:,:4,:,:)=maxloc(u,dim=3)
 write(84,*)uu(:,:4,:,:)
 call subx(maxloc(u,dim=3))
 write(84,*)minloc(u,dim=3)
 uu(:,:4,:,:)=minloc(u,dim=3)
 write(84,*)uu(:,:4,:,:)
 call subx(minloc(u,dim=3))
 rewind 84
 read(84,*) xu(2,:);if (any(xu(2,:)/=(/4,1,4,1,4/)))write(6,*) "NG"
 read(84,*) xu(2,:);if (any(xu(2,:)/=(/4,1,4,1,4/)))write(6,*) "NG"
 read(84,*) xu(2,:);if (any(xu(2,:)/=(/4,1,4,1,4/)))write(6,*) "NG"
 read(84,*) xu(2,:);if (any(xu(2,:)/=(/1,4,1,4,1/)))write(6,*) "NG"
 read(84,*) xu(2,:);if (any(xu(2,:)/=(/1,4,1,4,1/)))write(6,*) "NG"
 read(84,*) xu(2,:);if (any(xu(2,:)/=(/1,4,1,4,1/)))write(6,*) "NG"
 read(84,*) xu(2,:4);if (any(xu(2,:4)/=(/1,5,1,5/)))write(6,*) "NG"
 read(84,*) xu(2,:4);if (any(xu(2,:4)/=(/1,5,1,5/)))write(6,*) "NG"
 read(84,*) xu(2,:4);if (any(xu(2,:4)/=(/1,5,1,5/)))write(6,*) "NG"
 read(84,*) xu(2,:4);if (any(xu(2,:4)/=(/5,1,5,1/)))write(6,*) "NG"
 read(84,*) xu(2,:4);if (any(xu(2,:4)/=(/5,1,5,1/)))write(6,*) "NG"
 read(84,*) xu(2,:4);if (any(xu(2,:4)/=(/5,1,5,1/)))write(6,*) "NG"
 contains
  subroutine sub(n)
  dimension n(:,:,:,:)
  if (any(shape(n)/=(/1,5,1,1/)))write(6,*) "NG"
  write(84,*)n
  end subroutine
  subroutine subx(n)
  dimension n(:,:,:,:)
  if (any(shape(n)/=(/1,4,1,1/)))write(6,*) "NG"
  write(84,*)n
  end subroutine
      end
