   call s1
   print *,'pass'
   end
   subroutine s1
   parameter(iz=4)
   implicit integer(iz)(a-z)
   integer(iz),dimension(3,3)::a
     a=0
     forall (n1=1:3,&
             n2=1:3,&
          n1/=n2.or.n2/=n1)
      a(n1,n2)=1
     endforall
if (any((/a/)/=(/0,1,1,1,0,1,1,1,0/)))write(6,*) "NG"
end
