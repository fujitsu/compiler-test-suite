   call s1
   print *,'pass'
   end
   subroutine s1
   parameter(iz=4)
   implicit integer(iz)(a-z)
   integer(iz),dimension(300,3)::a
     a=0
     forall (n1=1:300,&
             n2=1:3,&
          n1/=n2.or.n2/=n1)
      a(n1,n2)=1
     endforall
     do mm1=1,300
       do mm2=1,3
         if (mm1==mm2) then
           if (a(mm1,mm2)/=0)write(6,*) "NG"
         else
           if (a(mm1,mm2)/=1)write(6,*) "NG"
         endif
       enddo
     enddo
     a=0
     forall (n1=1:300,&
             n2=1:3,&
          n1==n2.and.n2==n1)
      a(n1,n2)=1
     endforall
     do mm1=1,300
       do mm2=1,3
         if (mm1==mm2) then
           if (a(mm1,mm2)/=1)write(6,*) "NG"
         else
           if (a(mm1,mm2)/=0)write(6,*) "NG"
         endif
       enddo
     enddo
end
