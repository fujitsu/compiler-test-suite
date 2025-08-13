 call s1
 print *,'pass'
 end
 subroutine s1
 real*8 u(4,5)
 integer uu(4,5)
 u=reshape((/1,2,3,4,8,7,6,5,9,10,11,12,16,15,14,13,17,18,19,20/),(/4,5/))
 write(83,*)maxloc(u,dim=1)
 uu(1,:)=maxloc(u,dim=1)
 write(83,*)uu(1,:)
 call sub(maxloc(u,dim=1))
 write(83,*)minloc(u,dim=1)
 uu(1,:)=minloc(u,dim=1)
 write(83,*)uu(1,:)
 call sub(minloc(u,dim=1))
 u=reshape((/20,1,19,2,18,3,17,4,16,5,15,6,14,7,13,8,12,9,11,10/),(/4,5/))
 write(83,*)maxloc(u,dim=2)
 uu(1,:4)=maxloc(u,dim=2)
 write(83,*)uu(1,:4)
 call sub(maxloc(u,dim=2))
 write(83,*)minloc(u,dim=2)
 uu(1,:4)=minloc(u,dim=2)
 write(83,*)uu(1,:4)
 call sub(minloc(u,dim=2))
 rewind 83
 read(83,*) uu(2,:);if (any(uu(2,:)/=(/4,1,4,1,4/)))write(6,*) "NG"
 read(83,*) uu(2,:);if (any(uu(2,:)/=(/4,1,4,1,4/)))write(6,*) "NG"
 read(83,*) uu(2,:);if (any(uu(2,:)/=(/4,1,4,1,4/)))write(6,*) "NG"
 read(83,*) uu(2,:);if (any(uu(2,:)/=(/1,4,1,4,1/)))write(6,*) "NG"
 read(83,*) uu(2,:);if (any(uu(2,:)/=(/1,4,1,4,1/)))write(6,*) "NG"
 read(83,*) uu(2,:);if (any(uu(2,:)/=(/1,4,1,4,1/)))write(6,*) "NG"
 read(83,*) uu(2,:4);if (any(uu(2,:4)/=(/1,5,1,5/)))write(6,*) "NG"
 read(83,*) uu(2,:4);if (any(uu(2,:4)/=(/1,5,1,5/)))write(6,*) "NG"
 read(83,*) uu(2,:4);if (any(uu(2,:4)/=(/1,5,1,5/)))write(6,*) "NG"
 read(83,*) uu(2,:4);if (any(uu(2,:4)/=(/5,1,5,1/)))write(6,*) "NG"
 read(83,*) uu(2,:4);if (any(uu(2,:4)/=(/5,1,5,1/)))write(6,*) "NG"
 read(83,*) uu(2,:4);if (any(uu(2,:4)/=(/5,1,5,1/)))write(6,*) "NG"
 contains
  subroutine sub(n)
  dimension n(:)
  write(83,*)n
  end subroutine
      end
