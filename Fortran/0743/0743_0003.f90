         type z
           integer,pointer::za2(:)
         end type
         type (z) ::b(2,1)
         logical  ::mask(2,1)
         integer  ::vs1(2)
         integer,target::t(1)=1
         logical,parameter::tt=.true.,ff=.false.

          vs1=(/1,2/)
          b(1,1)%za2=>null()
          b(2,1)%za2=>null()

          mask(1,1)=ff
          mask(2,1)=ff

         forall(i=1:1)
           where(mask(:,i))
             b(vs1,i)=z(t)
           end where
         end forall

        if (associated(b(1,1)%za2))write(6,*) "NG"
        if (associated(b(2,1)%za2))write(6,*) "NG"

      print *,'pass'
     end
