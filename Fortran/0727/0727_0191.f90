 call s1
 print *,'pass'
 end
 module m1
   integer ::n=3
  contains
 function rep(a)
  character*(*),dimension(:)::a
  character(len(a)*3)::rep(size(a))
  do k=1,size(a)
   rep(k)=repeat(a(k),3)
  end do
 end function
 subroutine sx1
 character(n),allocatable,dimension(:)::a
 character(n),allocatable,dimension(:)::v
 allocate(a(5),v(2))
 a=(/'1','0','3','4','0'/)//(/'1','0','3','4','0'/)//(/'1','0','3','4','0'/)
 v(2)='000'
 call s11(a,v(2))
 call s12(a,v(2))
 call s13(a,v(2))
 call s14(a,v(2))
 call s15(a,v(2))
 call s16(a,v(2))
 call s17(a,v(2))
 call s18(a,v(2))
 call s19(a,v(2))
 call s20(a,v(2))
 call s21(a,v(2))
 call s22(a,v(2))
 call s23(a,v(2))
 end subroutine
 subroutine s11(a,v)
 implicit character(n)(a)
 character(n),dimension(:) ::a
 character(n)::v
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a='x'//'x'//'x'
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
 end subroutine
 subroutine s12(a,v)
 implicit character(n)(a)
 character(n),dimension(:) ::a
 character(n)::v
 character,parameter::ap='x'
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a=ap(1:n/3)//'x'(1:n/3)//'x'(1:n/3)
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
 end subroutine
 subroutine s13(a,v)
 implicit character(n)(a)
 character(n),dimension(:) ::a
 character(n)::v
 character(1),parameter,dimension(2)::ap='x'
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a=ap(2)(1:n/3)//ap(2)(1:n/3)//ap(2)(1:n/3)
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
 end subroutine
 subroutine s14(a,v)
 implicit character(n)(a)
 character(n),dimension(:) ::a
 character(n)::v
 character(1)::ap='x'
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a=ap(1:n/3)//ap(1:n/3)//ap(1:n/3)
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
 end subroutine
 subroutine s15(a,v)
 implicit character(n)(a)
 character(n),dimension(:) ::a
 character(n)::v
 character(1),dimension(2)::ap='x'
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a=ap(k1+k1)(1:n/3)//ap(k1+k1)(1:n/3)//ap(k1+k1)(1:n/3)
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
 end subroutine
 subroutine s16(a,v)
 implicit character(n)(a)
 character(n),dimension(:) ::a
 character(n)::v
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a=ap()//ap()//ap()
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
  contains
    pure function ap()
    character(n/3) ap
    ap='x'
    end function
 end subroutine
 subroutine s17(a,v)
 implicit character(n)(a)
 character(n),dimension(:) ::a
 character(n)::v
 character(1)::ap
 ap()='x'
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a=ap()//ap()//ap()
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
 end subroutine
 subroutine s18(a,v)
 implicit character(n)(a)
 character(n),dimension(:) ::a
 character(n)::v
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a=(/('x',i=1,k5)/)//(/('x',i=1,k5)/)//(/('x',i=1,k5)/)
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
 end subroutine
 subroutine s19(a,v)
 implicit character(n)(a)
 character(1),dimension(5),parameter::ap='x'
 character(n),dimension(:) ::a
 character(n)::v
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a=ap(:)(1:n/3)//ap(:)(1:n/3)//ap(:)(1:n/3)
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
 end subroutine
 subroutine s20(a,v)
 implicit character(n)(a)
 character(1),dimension(5),parameter::ap='x'
 character(n),dimension(:) ::a
 character(n)::v
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a=ap(k1:k5:k1)(1:n/3)//ap(k1:k5:k1)(1:n/3)//ap(k1:k5:k1)(1:n/3)
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
 end subroutine
 subroutine s21(a,v)
 implicit character(n)(a)
 character(1),dimension(5)::ap='x'
 character(n),dimension(:) ::a
 character(n)::v
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a=ap(:)(1:n/3)//ap(:)(1:n/3)//ap(:)(1:n/3)
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
 end subroutine
 subroutine s22(a,v)
 implicit character(n)(a)
 character(1),dimension(5)::ap='x'
 character(n),dimension(:) ::a
 character(n)::v
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a=ap(k1:k5:k1)(1:n/3)//ap(k1:k5:k1)(1:n/3)//ap(k1:k5:k1)(1:n/3)
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
 end subroutine
 subroutine s23(a,v)
 implicit character(1)(a)
 character(1),dimension(5)::ax='x'
 character(n),dimension(:) ::a
 character(n)::v
 k1=1;k5=5
 forall (i=k1:k5)
   where (a==v)
    a=ap(ax)//ap(ax)//ap(ax)
   end where
 end forall
 if (any((a/=rep((/'1','x','3','4','x'/)))))write(6,*) "NG"
  contains
    elemental function ap(ax)
    character(1), ap,ax
    intent(in)::ax
    ap=ax
    end function
 end subroutine
end
 subroutine s1
  use m1
  call sx1
 end
