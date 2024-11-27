subroutine s1
         type z
           integer,pointer::za2(:)
         end type
         type (z) ::b(2,2,1),x
         logical  ::mask(2,2,1)
         integer  ::vs1(2)
         integer,target::t(1)=1

          vs1=(/1,2/)
          x%za2=>t

          b(2,1,1)%za2=>null()
          b(1,2,1)%za2=>null()

          mask(1,1,1)=.true.
          mask(2,1,1)=.false.
          mask(1,2,1)=.false.
          mask(2,2,1)=.true.

         forall(i=1:1)
           where(mask(:,:,i))
             b(vs1,:,i)=z(t)
           end where
         end forall

        if (.not.associated(b(1,1,1)%za2))write(6,*) "NG"
        if (associated(b(2,1,1)%za2))write(6,*) "NG"
        if (associated(b(1,2,1)%za2))write(6,*) "NG"
        if (.not.associated(b(2,2,1)%za2))write(6,*) "NG"

     end
subroutine s2
         type z
           integer,pointer::za2(:)
         end type
         type (z) ::b(2,2,1)
         logical  ::mask(2,2,1)
         integer  ::vs1(2)
         integer,target::t(1)=1

          vs1=(/1,2/)

          mask(1,1,1)=.true.
          mask(2,1,1)=.false.
          mask(1,2,1)=.false.
          mask(2,2,1)=.true.

          b(2,1,1)%za2=>null()
          b(1,2,1)%za2=>null()

         forall(i=1:1)
           where(mask(:,:,i))
             b(:,:,i)=z(t)
           end where
         end forall

        if (.not.associated(b(1,1,1)%za2))write(6,*) "NG"
        if (associated(b(2,1,1)%za2))write(6,*) "NG"
        if (associated(b(1,2,1)%za2))write(6,*) "NG"
        if (.not.associated(b(2,2,1)%za2))write(6,*) "NG"

     end
call s1
call s2
      print *,'pass'
end
