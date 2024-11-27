 call s1
 print *,'pass'
 end
 subroutine s1
 call s11
 call s12
 call s13
 call s14
 call s15
 end
 subroutine s11
 complex,allocatable,dimension(:) ::a,b,c
 allocate(a(5),b(5),c(5)); a=(/(1,1),(0,0),(3,3),(4,4),(0,0)/);b=(-99,-99);c=(-99,-99)
 forall (i=1:5)
   where (a==0)
    a=-(1,1)
    b=a
    c=a
   end where
 end forall
 if (any(a/=(/(1,1),-(1,1),(3,3),(4,4),-(1,1)/)))write(6,*) "NG"
 if (any(b/=(/(-99,-99),-(1,1),(-99,-99),(-99,-99),-(1,1)/)))write(6,*) "NG"
 if (any(c/=(/(-99,-99),-(1,1),(-99,-99),(-99,-99),-(1,1)/)))write(6,*) "NG"
end
 subroutine s12
 complex,allocatable,dimension(:) ::a,b,c
 allocate(a(5),b(5),c(5)); a=(/(1,1),(0,0),(3,3),(4,4),(0,0)/);b=(-99,-99);c=(-99,-99)
 forall (i=1:5)
   where (a(i:i)==0)
    a(i:i)=-(1,1)
    b(i:i)=a(i:i)
    c(i:i)=a(i:i)
   end where
 end forall
 if (any(a/=(/(1,1),-(1,1),(3,3),(4,4),-(1,1)/)))write(6,*) "NG"
 if (any(b/=(/(-99,-99),-(1,1),(-99,-99),(-99,-99),-(1,1)/)))write(6,*) "NG"
 if (any(c/=(/(-99,-99),-(1,1),(-99,-99),(-99,-99),-(1,1)/)))write(6,*) "NG"
end
 subroutine s13
 complex,allocatable,dimension(:) ::a,b,c
 allocate(a(5),b(5),c(5)); a=(/(1,1),(0,0),(3,3),(4,4),(0,0)/);b=(-99,-99);c=(-99,-99)
 k1=1;k5=5
 write(1)k1,k5,k5-1
 rewind 1
 read (1)k1,k5,k4
 forall (i=k1:k5-k4)
   where (a==0)
    a=-(1,1)
    b=a
    c=a
   end where
 end forall
 if (any(a/=(/(1,1),-(1,1),(3,3),(4,4),-(1,1)/)))write(6,*) "NG"
 if (any(b/=(/(-99,-99),-(1,1),(-99,-99),(-99,-99),-(1,1)/)))write(6,*) "NG"
 if (any(c/=(/(-99,-99),-(1,1),(-99,-99),(-99,-99),-(1,1)/)))write(6,*) "NG"
end
 subroutine s14
 complex,allocatable,dimension(:,:,:,:,:,:,:) ::a,b,c
 allocate(a(1,1,1,1,1,1,5),b(1,1,1,1,1,1,5),c(1,1,1,1,1,1,5))
 a=reshape((/(1,1),(0,0),(3,3),(4,4),(0,0)/),(/1,1,1,1,1,1,5/));b=(-99,-99);c=(-99,-99)
 forall (i=1:5)
   where (a==0)
    a=-(1,1)
    b=a
    c=a
   end where
 end forall
 if (any((/a/)/=(/(1,1),-(1,1),(3,3),(4,4),-(1,1)/)))write(6,*) "NG"
 if (any((/b/)/=(/(-99,-99),-(1,1),(-99,-99),(-99,-99),-(1,1)/)))write(6,*) "NG"
 if (any((/c/)/=(/(-99,-99),-(1,1),(-99,-99),(-99,-99),-(1,1)/)))write(6,*) "NG"
end
 subroutine s15
 complex,allocatable,dimension(:,:,:,:,:,:,:) ::a,b,c
 allocate(a(1,1,1,1,1,1,5),b(1,1,1,1,1,1,5),c(1,1,1,1,1,1,5))
 a=reshape((/(1,1),(0,0),(3,3),(4,4),(0,0)/),(/1,1,1,1,1,1,5/));b=(-99,-99);c=(-99,-99)
 forall (i=1:5)
   where (a(:,:,:,:,:,:,i)==0)
    a(:,:,:,:,:,:,i)=-(1,1)
    b(:,:,:,:,:,:,i)=a(:,:,:,:,:,:,i)
    c(:,:,:,:,:,:,i)=a(:,:,:,:,:,:,i)
   end where
 end forall
 if (any((/a/)/=(/(1,1),-(1,1),(3,3),(4,4),-(1,1)/)))write(6,*) "NG"
 if (any((/b/)/=(/(-99,-99),-(1,1),(-99,-99),(-99,-99),-(1,1)/)))write(6,*) "NG"
 if (any((/c/)/=(/(-99,-99),-(1,1),(-99,-99),(-99,-99),-(1,1)/)))write(6,*) "NG"
end
