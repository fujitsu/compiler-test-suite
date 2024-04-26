 integer ::a(3,3)= reshape([1,2,3,4,5,6,7,8,9],[3,3])
 integer ::b(3,3)= reshape([1,2,3,4,5,6,7,8,9],[3,3])
 integer ::c(3,3)= reshape([1,2,3,4,5,6,7,8,9],[3,3])
 call sub1(a(1:3:2,1:3:2), b(1:3:2,1:3:2),c(1:3:2,1:3:2))
 if (a(1,1).ne.11) print *,101,a(1,1)
 if (a(1,2).ne.4) print *,1021,a(1,2)
 if (a(1,3).ne.17) print *,1022,a(1,3)
 if (a(2,1).ne.2) print *,1023,a(2,1)
 if (a(2,2).ne.5) print *,1024,a(2,2)
 if (a(2,3).ne.8) print *,1025,a(2,3)
 if (a(3,1).ne.13) print *,1026,a(3,1)
 if (a(3,2).ne.6) print *,1027,a(3,2)
 if (a(3,3).ne.19) print *,1028,a(3,3)
 if (b(1,1).ne.11) print *,101,b(1,1)
 if (b(1,2).ne.4) print *,1021,b(1,2)
 if (b(1,3).ne.17) print *,1022,b(1,3)
 if (b(2,1).ne.2) print *,1023,b(2,1)
 if (b(2,2).ne.5) print *,1024,b(2,2)
 if (b(2,3).ne.8) print *,1025,b(2,3)
 if (b(3,1).ne.13) print *,1026,b(3,1)
 if (b(3,2).ne.6) print *,1027,b(3,2)
 if (b(3,3).ne.19) print *,1028,b(3,3)
 if (c(1,1).ne.11) print *,101,c(1,1)
 if (c(1,2).ne.4) print *,1021,c(1,2)
 if (c(1,3).ne.17) print *,1022,c(1,3)
 if (c(2,1).ne.2) print *,1023,c(2,1)
 if (c(2,2).ne.5) print *,1024,c(2,2)
 if (c(2,3).ne.8) print *,1025,c(2,3)
 if (c(3,1).ne.13) print *,1026,c(3,1)
 if (c(3,2).ne.6) print *,1027,c(3,2)
 if (c(3,3).ne.19) print *,1028,c(3,3)
 print *,'pass'
 contains
subroutine sub1(dmy,dmy2,dmy3)
 integer :: dmy(:,:)
 integer :: dmy2(2,2)
 integer,contiguous :: dmy3(:,:)
 call sub(dmy,dmy2,dmy3)
 if (dmy(1,1).ne.11) print *,104,dmy(1,1)
 if (dmy(1,2).ne.17) print *,105,dmy(1,2)
 if (dmy(2,1).ne.13) print *,106,dmy(2,1)
 if (dmy(2,2).ne.19) print *,107,dmy(2,2)
 if (dmy2(1,1).ne.11) print *,104,dmy2(1,1)
 if (dmy2(1,2).ne.17) print *,105,dmy2(1,2)
 if (dmy2(2,1).ne.13) print *,106,dmy2(2,1)
 if (dmy2(2,2).ne.19) print *,107,dmy2(2,2)
 if (dmy3(1,1).ne.11) print *,104,dmy3(1,1)
 if (dmy3(1,2).ne.17) print *,105,dmy3(1,2)
 if (dmy3(2,1).ne.13) print *,106,dmy3(2,1)
 if (dmy3(2,2).ne.19) print *,107,dmy3(2,2)
end subroutine

subroutine sub(b,c,d)
 integer,contiguous:: b(:,:)
 integer,contiguous:: c(:,:)
 integer,contiguous:: d(:,:)
 if(is_contiguous(b).neqv..true.)print*,"102"
 if(is_contiguous(c).neqv..true.)print*,"102"
 if(is_contiguous(d).neqv..true.)print*,"102"
 if (b(1,1).ne.1) print *,102,b
  b=b+10
  c = c+10
  d= d+10
  end subroutine
  end

