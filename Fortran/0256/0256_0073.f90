 integer ::a(3,3)= reshape([1,2,3,4,5,6,7,8,9],[3,3])
 call sub1(a(1:3:2,1:3:2))
 if (a(1,1).ne.11) print *,101,a
 if (a(1,2).ne.4) print *,1021,a(1,2)
 if (a(1,3).ne.17) print *,1022,a(1,3)
 if (a(2,1).ne.2) print *,1023,a(2,1)
 if (a(2,2).ne.5) print *,1024,a(2,2)
 if (a(2,3).ne.8) print *,1025,a(2,3)
 if (a(3,1).ne.13) print *,1026,a(3,1)
 if (a(3,2).ne.6) print *,1027,a(3,2)
 if (a(3,3).ne.19) print *,1028,a(3,3)
 print *,'pass'
 contains
subroutine sub1(dmy)
 integer :: dmy(:,:)
 call sub(dmy)
 if (dmy(1,1).ne.11) print *,104,dmy(1,1)
 if (dmy(1,2).ne.17) print *,105,dmy(1,2)
 if (dmy(2,1).ne.13) print *,106,dmy(2,1)
 if (dmy(2,2).ne.19) print *,107,dmy(2,2)
end subroutine

subroutine sub(b)
 integer,contiguous:: b(:,:)
 if(is_contiguous(b).neqv..true.)print*,"102"
 if (b(1,1).ne.1) print *,102,b
  b=b+10
  end subroutine
  end

