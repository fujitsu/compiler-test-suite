 call s1
 print *,'pass'
 end
 module m1
 type w; character ww; end type
  interface operator(==)
    module procedure f1,f6,f7
  end interface
  interface operator(/=)
    module procedure c1
  end interface
  contains
  pure function f1(r,c)
  character*(*),intent(in):: c
  type(w),dimension(:),intent(in)::r
  logical,dimension(:),pointer ::f1
  allocate(f1(size(r)))
  f1=r%ww==c
  end function
  pure function f6(r,c) result(f1)
  character*(*),intent(in):: c
  type(w),dimension(:,:,:,:,:,:),intent(in)::r
  logical,dimension(:,:,:,:,:,:),pointer ::f1
  allocate(f1(size(r,dim=1),size(r,dim=2),size(r,dim=3), &
              size(r,dim=4),size(r,dim=5),size(r,dim=6) ))
  f1=r%ww==c
  end function
  pure function f7(r,c) result(f1)
  character*(*),intent(in):: c
  type(w),dimension(:,:,:,:,:,:,:),intent(in)::r
  logical,dimension(:,:,:,:,:,:,:),pointer ::f1
  allocate(f1(size(r,dim=1),size(r,dim=2),size(r,dim=3), &
              size(r,dim=4),size(r,dim=5),size(r,dim=6),size(r,dim=7)))
  f1=r%ww==c
  end function
  function c1(r,c) result(f1)
  character*(*),intent(in):: c(:)
  type(w),dimension(:),intent(in)::r
  logical,dimension(:),pointer ::f1
  allocate(f1(size(r)))
  f1=r%ww/=c
  end function
 end
 subroutine s1
 call s11
 call s12
 call s13
 call s14
 call s15
 end
 subroutine s11
 use m1
 type(w),dimension(5) ::a=(/w('1'),w('0'),w('3'),w('4'),w('0')/),b=w('z'),c=w('z')
 forall (i=1:5)
   where (a=='0')
    a=w('x')
    b=a
    c=a
   end where
 end forall
 if (any(a/=(/'1','x','3','4','x'/)))write(6,*) "NG"
 if (any(b/=(/'z','x','z','z','x'/)))write(6,*) "NG"
 if (any(c/=(/'z','x','z','z','x'/)))write(6,*) "NG"
end
 subroutine s12
 use m1
 type(w),dimension(5) ::a=(/w('1'),w('0'),w('3'),w('4'),w('0')/),b=w('z'),c=w('z')
 forall (i=1:5)
   where (a(i:i)=='0')
    a(i:i)=w('x')
    b(i:i)=a(i:i)
    c(i:i)=a(i:i)
   end where
 end forall
 if (any(a/=(/'1','x','3','4','x'/)))write(6,*) "NG"
 if (any(b/=(/'z','x','z','z','x'/)))write(6,*) "NG"
 if (any(c/=(/'z','x','z','z','x'/)))write(6,*) "NG"
end
 subroutine s13
 use m1
 type(w),dimension(5) ::a=(/w('1'),w('0'),w('3'),w('4'),w('0')/),b=w('z'),c=w('z')
 k1=1;k5=5
 write(1)k1,k5,k5-1
 rewind 1
 read (1)k1,k5,k4
 forall (i=k1:k5-k4)
   where (a=='0')
    a=w('x')
    b=a
    c=a
   end where
 end forall
 if (any(a/=(/'1','x','3','4','x'/)))write(6,*) "NG"
 if (any(b/=(/'z','x','z','z','x'/)))write(6,*) "NG"
 if (any(c/=(/'z','x','z','z','x'/)))write(6,*) "NG"
end
 subroutine s14
 use m1
 type(w),dimension(1,1,1,1,1,1,5) ::a=reshape((/w('1'),w('0'),w('3'),w('4'),w('0')/),(/1,1,1,1,1,1,5/)),b=w('z'),c=w('z')
 forall (i=1:5)
   where (a=='0')
    a=w('x')
    b=a
    c=a
   end where
 end forall
 if (any((/a/)/=(/'1','x','3','4','x'/)))write(6,*) "NG"
 if (any((/b/)/=(/'z','x','z','z','x'/)))write(6,*) "NG"
 if (any((/c/)/=(/'z','x','z','z','x'/)))write(6,*) "NG"
end
 subroutine s15
 use m1
 type(w),dimension(1,1,1,1,1,1,5) ::a=reshape((/w('1'),w('0'),w('3'),w('4'),w('0')/),(/1,1,1,1,1,1,5/)),b=w('z'),c=w('z')
 forall (i=1:5)
   where (a(:,:,:,:,:,:,i)=='0')
    a(:,:,:,:,:,:,i)=w('x')
    b(:,:,:,:,:,:,i)=a(:,:,:,:,:,:,i)
    c(:,:,:,:,:,:,i)=a(:,:,:,:,:,:,i)
   end where
 end forall
 if (any((/a/)/=(/'1','x','3','4','x'/)))write(6,*) "NG"
 if (any((/b/)/=(/'z','x','z','z','x'/)))write(6,*) "NG"
 if (any((/c/)/=(/'z','x','z','z','x'/)))write(6,*) "NG"
end
