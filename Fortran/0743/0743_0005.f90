subroutine s1
         type z
           integer,pointer::za2(:)
         end type
         type (z) ::b(2,2,1),x(2,2)
         logical  ::mask(2,2,1)
         integer  ::vs1(2)
         integer,target::t(2,2,1)=reshape((/1,2,3,4/),(/2,2,1/))

          vs1=(/1,2/)
          x(1,1)%za2=>t(1,1,:)
          x(2,1)%za2=>t(2,1,:)
          x(1,2)%za2=>t(1,2,:)
          x(2,2)%za2=>t(2,2,:)

          b(2,1,1)%za2=>null()
          b(1,2,1)%za2=>null()

          mask(1,1,1)=.true.
          mask(2,1,1)=.false.
          mask(1,2,1)=.false.
          mask(2,2,1)=.true.

         forall(i=1:1)
           where(mask(:,:,i))
             b(vs1,:,i)=x
           end where
         end forall

        if (.not.associated(b(1,1,1)%za2)) print *,'error-1'
        if (associated(b(2,1,1)%za2)) print *,'error-2'
        if (associated(b(1,2,1)%za2)) print *,'error-3'
        if (.not.associated(b(2,2,1)%za2)) print *,'error-4'

     end
subroutine s2
         type z
           integer,pointer::za2(:)
         end type
         type (z) ::b(2,2,1),x(2,2)
         logical  ::mask(2,2,1)
         integer  ::vs1(2)
         integer,target::t(2,2,1)=reshape((/1,2,3,4/),(/2,2,1/))

          vs1=(/1,2/)
          x(1,1)%za2=>t(1,1,:)
          x(2,1)%za2=>t(2,1,:)
          x(1,2)%za2=>t(1,2,:)
          x(2,2)%za2=>t(2,2,:)

          b(2,1,1)%za2=>null()
          b(1,2,1)%za2=>null()

          mask(1,1,1)=.true.
          mask(2,1,1)=.false.
          mask(1,2,1)=.false.
          mask(2,2,1)=.true.

         forall(i=1:1)
           where(mask(:,:,i))
             b(:,:,i)=x
           end where
         end forall

        if (.not.associated(b(1,1,1)%za2)) print *,'error-1'
        if (associated(b(2,1,1)%za2)) print *,'error-2'
        if (associated(b(1,2,1)%za2)) print *,'error-3'
        if (.not.associated(b(2,2,1)%za2)) print *,'error-4'

     end
call s1
call s2
      print *,'pass'
end
