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
     a=0
     forall (n1=1_iz:3_iz:1_iz,&
             n2=1_iz:3_iz:1_iz,&
             n3=1_iz:3_iz:1_iz,&
             n4=1_iz:3_iz:1_iz,&
             n1==n2.and.n2==n3.and.n3==n4)
      a(n1,n2,n3,n4)=1
     endforall
     do mm1=1,3
     do mm2=1,3
     do mm3=1,3
     do mm4=1,3
      if (mm1==mm2.and.mm1==mm3.and.mm1==mm4) then
        if (a(mm1,mm2,mm3,mm4)/=1)write(6,*) "NG"
      else
        if (a(mm1,mm2,mm3,mm4)/=0)write(6,*) "NG"
      endif
    enddo
    enddo
    enddo
    enddo
end
