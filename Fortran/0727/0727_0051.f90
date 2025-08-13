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
 integer,dimension(5) ::a=(/1,0,3,4,0/),b=-99,c=-99
 forall (i=1:5)
   where (a==0)
    a=-1
    b=a
    c=a
   end where
 end forall
 if (any(a/=(/1,-1,3,4,-1/)))write(6,*) "NG"
 if (any(b/=(/-99,-1,-99,-99,-1/)))write(6,*) "NG"
 if (any(c/=(/-99,-1,-99,-99,-1/)))write(6,*) "NG"
end
 subroutine s12
 integer,dimension(5) ::a=(/1,0,3,4,0/),b=-99,c=-99
 forall (i=1:5)
   where (a(i:i)==0)
    a(i:i)=-1
    b(i:i)=a(i:i)
    c(i:i)=a(i:i)
   end where
 end forall
 if (any(a/=(/1,-1,3,4,-1/)))write(6,*) "NG"
 if (any(b/=(/-99,-1,-99,-99,-1/)))write(6,*) "NG"
 if (any(c/=(/-99,-1,-99,-99,-1/)))write(6,*) "NG"
end
 subroutine s13
 integer,dimension(5) ::a=(/1,0,3,4,0/),b=-99,c=-99
 k1=1;k5=5
 write(9)k1,k5,k5-1
 rewind 9
 read (9)k1,k5,k4
 forall (i=k1:k5-k4)
   where (a==0)
    a=-1
    b=a
    c=a
   end where
 end forall
 if (any(a/=(/1,-1,3,4,-1/)))write(6,*) "NG"
 if (any(b/=(/-99,-1,-99,-99,-1/)))write(6,*) "NG"
 if (any(c/=(/-99,-1,-99,-99,-1/)))write(6,*) "NG"
end
 subroutine s14
 integer,dimension(1,1,1,1,1,1,5) ::a=reshape((/1,0,3,4,0/),(/1,1,1,1,1,1,5/)),b=-99,c=-99
 forall (i=1:5)
   where (a==0)
    a=-1
    b=a
    c=a
   end where
 end forall
 if (any((/a/)/=(/1,-1,3,4,-1/)))write(6,*) "NG"
 if (any((/b/)/=(/-99,-1,-99,-99,-1/)))write(6,*) "NG"
 if (any((/c/)/=(/-99,-1,-99,-99,-1/)))write(6,*) "NG"
end
 subroutine s15
 integer,dimension(1,1,1,1,1,1,5) ::a=reshape((/1,0,3,4,0/),(/1,1,1,1,1,1,5/)),b=-99,c=-99
 forall (i=1:5)
   where (a(:,:,:,:,:,:,i)==0)
    a(:,:,:,:,:,:,i)=-1
    b(:,:,:,:,:,:,i)=a(:,:,:,:,:,:,i)
    c(:,:,:,:,:,:,i)=a(:,:,:,:,:,:,i)
   end where
 end forall
 if (any((/a/)/=(/1,-1,3,4,-1/)))write(6,*) "NG"
 if (any((/b/)/=(/-99,-1,-99,-99,-1/)))write(6,*) "NG"
 if (any((/c/)/=(/-99,-1,-99,-99,-1/)))write(6,*) "NG"
end
