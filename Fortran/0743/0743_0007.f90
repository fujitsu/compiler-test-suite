subroutine s1
         integer ::b(2,2,1),x(2,2)
         logical  ::mask(2,2,1)
         integer  ::vs1(2)
         integer,target::t(2,2,1)=reshape((/1,2,3,4/),(/2,2,1/))

          b=0
          vs1=(/1,2/)
          x(1,1)=t(1,1,1)
          x(2,1)=t(2,1,1)
          x(1,2)=t(1,2,1)
          x(2,2)=t(2,2,1)

          mask(1,1,1)=.true.
          mask(2,1,1)=.false.
          mask(1,2,1)=.true.
          mask(2,2,1)=.false.

         forall(i=1:1)
           where(mask(:,:,i))
             b(vs1,:,i)=x
           end where
         end forall

        if (b(1,1,1)/=1)print *,'error1-1'
        if (b(2,1,1)/=0)print *,'error1-2'
        if (b(1,2,1)/=3)print *,'error1-3'
        if (b(2,2,1)/=0)print *,'error1-4'

     end
subroutine s2
         integer ::b(2,2,1),x(2,2)
         logical  ::mask(2,2,1)
         integer  ::vs1(2)
         integer,target::t(2,2,1)=reshape((/1,2,3,4/),(/2,2,1/))

          b=0
          vs1=(/1,2/)
          x(1,1)=t(1,1,1)
          x(2,1)=t(2,1,1)
          x(1,2)=t(1,2,1)
          x(2,2)=t(2,2,1)

          mask(1,1,1)=.true.
          mask(2,1,1)=.false.
          mask(1,2,1)=.true.
          mask(2,2,1)=.false.

         forall(i=1:1)
           where(mask(:,:,i))
             b(:,:,i)=x
           end where
         end forall

        if (b(1,1,1)/=1)print *,'error2-1'
        if (b(2,1,1)/=0)print *,'error2-2'
        if (b(1,2,1)/=3)print *,'error2-3'
        if (b(2,2,1)/=0)print *,'error2-4'

     end
call s1
call s2
      print *,'pass'
end
