 call s1
 print *,'pass'
 end
 module m1
  integer::n
 end
 subroutine s1
 use m1
 n=1
 call s11
 call s12
 call s13
 call s14
 call s15
 end
 subroutine s11
 use m1;character(n),dimension(5) ::a,b,c
 a=(/'1','0','3','4','0'/);b='z';c='z'
 forall (i=1:5)
   where (a=='0')
    a='x'
    b=a
    c=a
   end where
 end forall
 if (any(a/=(/'1','x','3','4','x'/)))write(6,*) "NG"
 if (any(b/=(/'z','x','z','z','x'/)))write(6,*) "NG"
 if (any(c/=(/'z','x','z','z','x'/)))write(6,*) "NG"
end
 subroutine s12
 use m1;character(n),dimension(5) ::a,b,c
 a=(/'1','0','3','4','0'/);b='z';c='z'
 forall (i=1:5)
   where (a(i:i)=='0')
    a(i:i)='x'
    b(i:i)=a(i:i)
    c(i:i)=a(i:i)
   end where
 end forall
 if (any(a/=(/'1','x','3','4','x'/)))write(6,*) "NG"
 if (any(b/=(/'z','x','z','z','x'/)))write(6,*) "NG"
 if (any(c/=(/'z','x','z','z','x'/)))write(6,*) "NG"
end
 subroutine s13
 use m1;character(n),dimension(5) ::a,b,c
 a=(/'1','0','3','4','0'/);b='z';c='z'
 k1=1;k5=5
 write(1)k1,k5,k5-1
 rewind 1
 read (1)k1,k5,k4
 forall (i=k1:k5-k4)
   where (a=='0')
    a='x'
    b=a
    c=a
   end where
 end forall
 if (any(a/=(/'1','x','3','4','x'/)))write(6,*) "NG"
 if (any(b/=(/'z','x','z','z','x'/)))write(6,*) "NG"
 if (any(c/=(/'z','x','z','z','x'/)))write(6,*) "NG"
end
 subroutine s14
 use m1;character(n),dimension(1,1,1,1,1,1,5) ::a,b,c
 a=reshape((/'1','0','3','4','0'/),(/1,1,1,1,1,1,5/));b='z';c='z'
 forall (i=1:5)
   where (a=='0')
    a='x'
    b=a
    c=a
   end where
 end forall
 if (any((/a/)/=(/'1','x','3','4','x'/)))write(6,*) "NG"
 if (any((/b/)/=(/'z','x','z','z','x'/)))write(6,*) "NG"
 if (any((/c/)/=(/'z','x','z','z','x'/)))write(6,*) "NG"
end
 subroutine s15
 use m1;character(n),dimension(1,1,1,1,1,1,5) ::a,b,c
 a=reshape((/'1','0','3','4','0'/),(/1,1,1,1,1,1,5/));b='z';c='z'
 forall (i=1:5)
   where (a(:,:,:,:,:,:,i)=='0')
    a(:,:,:,:,:,:,i)='x'
    b(:,:,:,:,:,:,i)=a(:,:,:,:,:,:,i)
    c(:,:,:,:,:,:,i)=a(:,:,:,:,:,:,i)
   end where
 end forall
 if (any((/a/)/=(/'1','x','3','4','x'/)))write(6,*) "NG"
 if (any((/b/)/=(/'z','x','z','z','x'/)))write(6,*) "NG"
 if (any((/c/)/=(/'z','x','z','z','x'/)))write(6,*) "NG"
end
