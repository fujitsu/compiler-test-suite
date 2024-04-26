
      type tag
        integer*2   i
        character*1 ch
      end type
      integer*1   i1s(0),  i1p(1),i1a(1),            i1b(1)
      integer*8   i8s(124),i8p(3),i8a(2,2,2,2,2,2,2),i8b(2,2,2,2,2,2,2)
      real*8      r8s(20), r8p(5),r8a(4,2,3),        r8b(4,2,3)
      complex*8   c8s(116),c8p(4),c8a(1,2,3,4,5),    c8b(1,2,3,4,5)
      character*9 chs(20), chp(1),cha(4,2,3),        chb(4,2,3)
      type (tag)  ts(4),   tp(3), ta(1,2,1,2,1,2,1), tb(1,2,1,2,1,2,1)

      integer*1,parameter,dimension(1):: i1sh =1,
     +                                   i1or =1
      integer*2,parameter,dimension(3):: i2sh =(/4,2,3/),
     +                                   i2or =(/3,2,1/)
      integer*4,parameter,dimension(5):: i4sh =(/1,2,3,4,5/),
     +                                   i4or =(/1,3,5,2,4/)
      integer*4,parameter,dimension(7):: i4sh2=(/1,2,1,2,1,2,1/),
     +                                   i4or2=(/7,3,5,1,4,2,6/)
      integer*8,parameter,dimension(7):: i8sh =2,
     +                                   i8or =(/1,2,3,4,5,6,7/)
      integer i,j,k,l,m,n,o

      parameter (i1s=1,i1p=0)
      parameter (i8s=(/0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,
     + 19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,
     + 40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,
     + 61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,
     + 82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,131,100,101,
     + 102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,
     + 118,119,120,121,122,123/),
     +           i8p=(/0,1,2/))
      parameter (r8s=(/0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,
     +                 19/),  r8p=(/0,1,2,3,4/))
      parameter (c8s=(2.0,4.0),
     +           c8p=(/(0.0,0.0),(1.0,1.0),(2.0,2.0),(3.0,3.0)/) )
      parameter (ts=(/tag(1,'a'),tag(2,'b'),tag(3,'c'),tag(4,'d')/),
     +           tp=(/tag(0,'A'),tag(1,'B'),tag(2,'C')/) )
      parameter (chs=(/'a','b','c','d','e','f','g','h','i','j',
     +                 'k','l','m','n','o','p','q','r','s','t'/),
     +           chp=(/'A'/) )

      parameter(i1a=reshape(SOURCE=i1s,SHAPE=i1sh,PAD=i1p,ORDER=i1or))
      parameter(i8a=reshape(PAD=i8p,SHAPE=i8sh,SOURCE=i8s,ORDER=i8or))
      parameter(r8a=reshape(r8s,PAD=r8p,SHAPE=i2sh,ORDER=i2or))
      parameter(c8a=reshape(c8s,i4sh,ORDER=i4or,PAD=c8p))
      parameter(cha=reshape(chs,i2sh,PAD=chp,ORDER=i2or))
      parameter(ta =reshape(ts ,i4sh2,tp,i4or2))

      i1b=reshape(SOURCE=i1s,SHAPE=i1sh,PAD=i1p,ORDER=i1or)
      i8b=reshape(PAD=i8p,SHAPE=i8sh,SOURCE=i8s,ORDER=i8or)
      r8b=reshape(r8s,PAD=r8p,SHAPE=i2sh,ORDER=i2or)
      c8b=reshape(c8s,i4sh,ORDER=i4or,PAD=c8p)
      chb=reshape(chs,i2sh,PAD=chp,ORDER=i2or)
      tb =reshape(ts ,i4sh2,tp,i4or2)

      do i=1,1
        call checki1(i1a(i),i1b(i))
      enddo

      do 10 i=1,2
      do 10 j=1,2
      do 10 k=1,2
      do 10 l=1,2
      do 10 m=1,2
      do 10 n=1,2
      do 10 o=1,2
  10    call checki8(i8a(i,j,k,l,m,n,o),i8b(i,j,k,l,m,n,o))

      do 20 i=1,4
      do 20 j=1,2
      do 20 k=1,3
        call checkr8(r8a(i,j,k),r8b(i,j,k))
  20    call checkch(cha(i,j,k),chb(i,j,k))

      do 30 i=1,2
      do 30 j=1,2
      do 30 k=1,2
      do 30 l=1,2
      do 30 m=1,2
  30    call checkc8(c8a(i,j,k,l,m),c8b(i,j,k,l,m))

      do 40 i=1,1
      do 40 j=1,2
      do 40 k=1,1
      do 40 l=1,2
      do 40 m=1,1
      do 40 n=1,2
      do 40 o=1,1
        call checki2(ta(i,j,k,l,m,n,o)%i, tb(i,j,k,l,m,n,o)%i)
  40    call checkch(ta(i,j,k,l,m,n,o)%ch,tb(i,j,k,l,m,n,o)%ch)

      print *,'*** ok ***'
      end

      subroutine checki1(i1,i1t)
      integer*1 i1,i1t
      if (i1.ne.i1t) then
        print *,i1,i1t
        print *,'??? ng ???'
        stop 1
      endif
      end

      subroutine checki2(i2,i2t)
      integer*2 i2,i2t
      if (i2.ne.i2t) then
        print *,i2,i2t
        print *,'??? ng ???'
        stop 2
      endif
      end

      subroutine checki4(i4,i4t)
      integer*4 i4,i4t
      if (i4.ne.i4t) then
        print *,i4,i4t
        print *,'??? ng ???'
        stop 3
      endif
      end

      subroutine checki8(i8,i8t)
      integer*8 i8,i8t
      if (i8.ne.i8t) then
        print *,i8,i8t
        print *,'??? ng ???'
        stop 4
      endif
      end

      subroutine checkr8(r8,r8t)
      real*8 r8,r8t
      if (r8t.eq.0.0d+0) then
        if (r8.ne.0.0d+0) then
          print *,'??? ng ???'
          stop 5
        endif
      else
        if ((abs(r8-r8t)/r8t).gt.1.0d-14) then
          print *,r8,r8t
          print *,'??? ng ???'
          stop 5
        endif
      endif
      end

      subroutine checkc8(c8,c8t)
      complex*8 c8,c8t
      if (((abs(real(c8)-real(c8t))/real(c8t)).gt.1.0e-5) .or.
     +    ((abs(imag(c8)-imag(c8t))/imag(c8t)).gt.1.0e-5)) then
        print *,c8,c8t
        print *,'??? ng ???'
        stop 6
      endif
      end

      subroutine checkch(ch,cht)
      character*(*) ch,cht
      if (ch.ne.cht) then
        print *,ch,cht
        print *,'??? ng ???'
        stop 7
      endif
      end
