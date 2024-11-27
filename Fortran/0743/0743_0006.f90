subroutine s1
         type z
           integer::za2(1)
         end type
         type (z) ::b(2,2,1),x(2,2)
         logical  ::mask(2,2,1)
         integer  ::vs1(2)
         integer,target::t(2,2,1)=reshape((/1,2,3,4/),(/2,2,1/))

          vs1=(/1,2/)
          x(1,1)%za2=t(1,1,:)
          x(2,1)%za2=t(2,1,:)
          x(1,2)%za2=t(1,2,:)
          x(2,2)%za2=t(2,2,:)

          mask(1,1,1)=.true.
          mask(2,1,1)=.false.
          mask(1,2,1)=.false.
          mask(2,2,1)=.true.
          b%za2(1)=0

         forall(i=1:1)
           where(mask(:,:,i))
             b(vs1,:,i)=x
           end where
         end forall

        if (any(b(1,1,1)%za2/=1))print *,'error-11'
        if (any(b(2,1,1)%za2/=0))print *,'error-12'
        if (any(b(1,2,1)%za2/=0))print *,'error-13'
        if (any(b(2,2,1)%za2/=4))print *,'error-14'

     end
subroutine s2
         type z
           integer::za2(1)
         end type
         type (z) ::b(2,2,1),x(2,2)
         logical  ::mask(2,2,1)
         integer  ::vs1(2)
         integer,target::t(2,2,1)=reshape((/1,2,3,4/),(/2,2,1/))

          vs1=(/1,2/)
          x(1,1)%za2=t(1,1,:)
          x(2,1)%za2=t(2,1,:)
          x(1,2)%za2=t(1,2,:)
          x(2,2)%za2=t(2,2,:)
          b%za2(1)=0

          mask(1,1,1)=.true.
          mask(2,1,1)=.false.
          mask(1,2,1)=.false.
          mask(2,2,1)=.true.

         forall(i=1:1)
           where(mask(:,:,i))
             b(:,:,i)=x
           end where
         end forall

        if (any(b(1,1,1)%za2/=1))print *,'error-21'
        if (any(b(2,1,1)%za2/=0))print *,'error-22'
        if (any(b(1,2,1)%za2/=0))print *,'error-23'
        if (any(b(2,2,1)%za2/=4))print *,'error-24'
     end
call s1
call s2
      print *,'pass'
end
