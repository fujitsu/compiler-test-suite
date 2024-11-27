 call s1
 print *,'pass'
 end
subroutine s1
   parameter(iz=8)
   implicit integer(iz)(a-z)
   integer(iz),dimension(3,3,3,3)::a
     a=0
     forall (n1=1_iz:3_iz:1_iz,n2=1_iz:3_iz:1_iz,n3=1_iz:3_iz:1_iz,n4=1_iz:3_iz:1_iz,n1/=n2.or.n2/=n3.or.n3/=n4)
      a(n1,n2,n3,n4)=1
     endforall
     if (any((/a/)/=(/0,(1,m=1,13*3),0,(1,m=1,13*3),0/)))write(6,*) "NG"
end
