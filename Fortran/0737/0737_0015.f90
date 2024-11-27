         real a(2049),b,c(2049)
         a=1.;b=1.;c=1.
         do j=1,100000
            call dum()
            forall (i=1:128)
              a(i)=a(i)*b+c(i)
            end forall
         enddo
         if (abs(a(1)-100001)>0.001)write(6,*) "NG"
         print *,'pass'
         end
         subroutine dum()
         end

