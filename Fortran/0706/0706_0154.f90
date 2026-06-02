c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      implicit none
      type z
      character(len=1)::a(0:9),c(3,2,5)
      integer         ::b(0:9),d(3,2,5)
      character(len=1),pointer::a1(:),c1(:,:)
      integer         ,pointer::b1(:),d1(:,:)
      end type
      type (z),target::g
      integer(2)::i
      write(g%a,'(i1)') (/(i,i=0,9)/)
      if (any(g%a/=(/(achar(i),i=iachar('0'),iachar('9'))/)))
     1 print *,'fail'
      read (g%a,'(i1)') g%b
      if (any(g%b/=(/(i,i=0,9)/)))print *,'fail'
      g%a='x';g%b=-1
      g%a1=>g%a;g%b1=>g%b
      write(g%a1,'(i1)') (/(i,i=0,9)/)
      if (any(g%a1/=
     1      (/(achar(i),i=iachar('0'),iachar('9'))/)))print *,'fail'
      if (any(g%a/=(/(achar(i),i=iachar('0'),iachar('9'))/)))
     1 print *,'fail'
      read (g%a1,'(i1)') g%b1
      if (any(g%b/=(/(i,i=0,9)/)))print *,'fail'
      write(g%c(3,:,:),'(i1)') (/(i,i=0,9)/)
      if (any(reshape(g%c(3,:,:),(/10/))/=
     1       (/(achar(i),i=iachar('0'),iachar('9'))/)))print *,'fail'
      read (g%c(3,:,:),'(i1)') g%d(3,:,:)
      if (any(reshape(g%d(3,:,:),(/10/))/=(/(i,i=0,9)/)))print *,'fail'
      g%c='x';g%d=-1
      g%c1=>g%c(3,:,:);g%d1=>g%d(3,:,:)
      write(g%c1,'(i1)') (/(i,i=0,9)/)
      if (any(reshape(g%c1,(/10/))/=
     1         (/(achar(i),i=iachar('0'),iachar('9'))/)))print *,'fail'
      if (any(reshape(g%c(3,:,:),(/10/))/=
     1         (/(achar(i),i=iachar('0'),iachar('9'))/)))print *,'fail'
      read (g%c1,'(i1)') g%d1
      if (any(reshape(g%d(3,:,:),(/10/))/=(/(i,i=0,9)/)))print *,'fail'
      end
