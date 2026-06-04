c
c
      call s1
      print *,'pass'
      end
      module tf
      logical,parameter::tt=.true.,ff=.not.tt
      integer u
      end module
      subroutine s1
      use tf
       interface
        subroutine ss3 (vect,vect1,vect2,vvv)
         character(*),pointer,dimension(:,:)::vect,vect1,vect2
         character(*),pointer,dimension(:)::vvv
        end subroutine
        subroutine ss2 (vect,vect1,vect2,vvv,ch)
         character(*),pointer,dimension(:,:)::vect,vect1,vect2
         character(*),pointer,dimension(:)::vvv
         character(*) ch
        end subroutine
       end interface
      character,pointer,dimension(:,:)::vect,vect1,vect2
      character,pointer,dimension(:)::vvv
      allocate(vect(2,3),vect1(2,3),vect2(2,3),vvv(6))
      u=11;open (u,delim='quote');call ss1
      u=12;open (u,delim='quote')
      call ss2(vect,vect1,vect2,vvv,'9')
      u=13;open (u,delim='quote')
      call ss3(vect,vect1,vect2,vvv)
      end
      subroutine ss3 (vect,vect1,vect2,vvv)
      use tf
      integer::i
      character(*),pointer,dimension(:,:)::vect,vect1,vect2
      character(*),pointer,dimension(:)::vvv
      call ss31(vect,vect1,vect2,vvv,'9')
      contains
      subroutine ss31(vect,vect1,vect2,vvv,ch)
      character(*),dimension(:,:)::vect,vect1,vect2
      character(*),dimension(:)::vvv
      character(*) ch
      vect(1,:)=(/'1','2','3'/)
      vect(2,:)=(/'4','5','6'/)
      vect1=EOSHIFT(vect,-1)
      vect2=EOSHIFT(vect,(/-1,1/),ch,2)
      write(u,*)(vect1(i,:),vect2(i,:),i=1,1)
      write(u,*)(vect1(i,:),vect2(i,:),i=2,2);rewind u
      read (u,*)vvv
      if (any(vvv/=(/' ',' ',' ','9','1','2'/)))print *,'fail'
      read (u,*)vvv
      if (any(vvv/=(/'1','2','3','5','6','9'/)))print *,'fail'
      if (any((/vect1(1,:),vect2(1,:)/)
     1     /=(/' ',' ',' ','9','1','2'/)))print *,'fail'
      if (any((/vect1(2,:),vect2(2,:)/)
     1     /=(/'1','2','3','5','6','9'/)))print *,'fail'
      end subroutine
      end subroutine
      subroutine ss2(vect,vect1,vect2,vvv,ch)
      use tf
      integer::i
      character(*),pointer,dimension(:,:)::vect,vect1,vect2
      character(*),pointer,dimension(:)::vvv
      character(*) ch
      allocate(vect(2,3),vect1(2,3),vect2(2,3),vvv(6))
      vect(1,:)=(/'1','2','3'/)
      vect(2,:)=(/'4','5','6'/)
      vect1=EOSHIFT(vect,-1)
      vect2=EOSHIFT(vect,(/-1,1/),ch,2)
      write(u,*)(vect1(i,:),vect2(i,:),i=1,1)
      write(u,*)(vect1(i,:),vect2(i,:),i=2,2);rewind u
      read (u,*)vvv
      if (any(vvv/=(/' ',' ',' ','9','1','2'/)))print *,'fail'
      read (u,*)vvv
      if (any(vvv/=(/'1','2','3','5','6','9'/)))print *,'fail'
      if (any((/vect1(1,:),vect2(1,:)/)
     1     /=(/' ',' ',' ','9','1','2'/)))print *,'fail'
      if (any((/vect1(2,:),vect2(2,:)/)
     1     /=(/'1','2','3','5','6','9'/)))print *,'fail'
      end
      subroutine ss1
      use tf
      integer::i
      character,dimension(2,3)::vect,vect1,vect2
      character,dimension(6)::vvv
      vect(1,:)=(/'1','2','3'/)
      vect(2,:)=(/'4','5','6'/)
      vect1=EOSHIFT(vect,-1)
      vect2=EOSHIFT(vect,(/-1,1/),'9',2)
      write(u,*)(vect1(i,:),vect2(i,:),i=1,1)
      write(u,*)(vect1(i,:),vect2(i,:),i=2,2);rewind u
      read (u,*)vvv
      if (any(vvv/=(/' ',' ',' ','9','1','2'/)))print *,'fail'
      read (u,*)vvv
      if (any(vvv/=(/'1','2','3','5','6','9'/)))print *,'fail'
      if (any((/vect1(1,:),vect2(1,:)/)/=
     1        (/' ',' ',' ','9','1','2'/)))print *,'fail'
      if (any((/vect1(2,:),vect2(2,:)/)
     1      /=(/'1','2','3','5','6','9'/)))print *,'fail'
      end
