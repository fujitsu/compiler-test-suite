 call s1
 print *,'pass'
 end
subroutine s1
   parameter(iz=8)
   implicit integer(iz)(a-z)
   integer(iz),dimension(300,3,3,3)::a
     k1=1;k2=2;k3=3
     a=0
     forall (n1=1_iz:300_iz:1_iz,n2=1_iz:3_iz:1_iz,n3=1_iz:3_iz:1_iz,n4=1_iz:3_iz:1_iz,n1/=n2.and.n2/=n3.and.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     call chkand(a)
     a=0
     forall (n1=1_iz:300_iz:1_iz,n2=1_iz:3_iz:1_iz,n3=1_iz:3_iz:1_iz,n4=1_iz:3_iz:1_iz,n1/=n2.or.n2/=n3.or.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     call chkor(a)
     a=0
     forall (n1=k1:k3*100:k1,n2=1_iz:3_iz:1_iz,n3=1_iz:3_iz:1_iz,n4=1_iz:3_iz:1_iz,n1/=n2.and.n2/=n3.and.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     call chkand(a)
     a=0
     forall (n1=k1:k3*100:k1,n2=1_iz:3_iz:1_iz,n3=1_iz:3_iz:1_iz,n4=1_iz:3_iz:1_iz,n1/=n2.or.n2/=n3.or.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     call chkor(a)
     a=0
     forall (n1=1_iz:3_iz*100:1_iz,n2=k1:k3:k1,n3=1_iz:3_iz:1_iz,n4=1_iz:3_iz:1_iz,n1/=n2.and.n2/=n3.and.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     call chkand(a)
     a=0
     forall (n1=1_iz:3_iz*100:1_iz,n2=k1:k3:k1,n3=1_iz:3_iz:1_iz,n4=1_iz:3_iz:1_iz,n1/=n2.or.n2/=n3.or.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     call chkor(a)
     a=0
     forall (n1=1_iz:3_iz*100:1_iz,n2=1_iz:3_iz:1_iz,n3=k1:k3:k1,n4=1_iz:3_iz:1_iz,n1/=n2.and.n2/=n3.and.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     call chkand(a)
     a=0
     forall (n1=1_iz:3_iz*100:1_iz,n2=1_iz:3_iz:1_iz,n3=k1:k3:k1,n4=1_iz:3_iz:1_iz,n1/=n2.or.n2/=n3.or.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     call chkor(a)
     a=0
     forall (n1=1_iz:3_iz*100:1_iz,n2=1_iz:3_iz:1_iz,n3=1_iz:3_iz:1_iz,n4=k1:k3:k1,n1/=n2.and.n2/=n3.and.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     call chkand(a)
     a=0
     forall (n1=1_iz:3_iz*100:1_iz,n2=1_iz:3_iz:1_iz,n3=1_iz:3_iz:1_iz,n4=k1:k3:k1,n1/=n2.or.n2/=n3.or.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     call chkor(a)
     a=0
     forall (n1=k1:k3*100:k1,n2=k1:k3:k1,n3=k1:k3:k1,n4=k1:k3:k1,n1/=n2.and.n2/=n3.and.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     call chkand(a)
     a=0
     forall (n1=k1:k3*100:k1,n2=k1:k3:k1,n3=k1:k3:k1,n4=k1:k3:k1,n1/=n2.or.n2/=n3.or.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     call chkor(a)
 contains
   subroutine chkand(x)
    implicit integer(iz)(a-z)
    integer(iz),dimension(300,3,3,3)::a
    integer(iz),dimension(:,:,:,:)::x
    a=0
    do m1=1,300,1; do m2=1,3,1; do m3=1,3,1; do m4=1,3,1
     if (m1/=m2.and.m2/=m3.and.m3/=m4) then
      a(m1,m2,m3,m4)=1
     else; cycle; endif
    end do;end do;end do;end do
    if (any(a/=x))write(6,*) "NG";x=0
  end subroutine
   subroutine chkor (x)
    implicit integer(iz)(a-z)
    integer(iz),dimension(300,3,3,3)::a
    integer(iz),dimension(:,:,:,:)::x
    a=0
    do m1=1,300,1; do m2=1,3,1; do m3=1,3,1; do m4=1,3,1
     if (m1/=m2.or.m2/=m3.or.m3/=m4) then
      a(m1,m2,m3,m4)=1
     else; cycle; endif
    end do;end do;end do;end do
    if (any(a/=x))write(6,*) "NG";x=0
  end subroutine
end
