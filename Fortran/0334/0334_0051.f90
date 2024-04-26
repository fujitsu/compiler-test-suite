

      integer(kind=1),parameter,dimension(5)::i01_s1=(/(i,i=1,5)/) &
                                             ,i01_s2=(/(i,i=2,6)/)
      integer(kind=2),parameter,dimension(5)::i02_s1=(/(i,i=1,5)/) &
                                             ,i02_s2=(/(i,i=2,6)/)
      integer(kind=4),parameter,dimension(5)::i04_s1=(/(i,i=1,5)/) &
                                             ,i04_s2=(/(i,i=2,6)/)
      integer(kind=8),parameter,dimension(5)::i08_s1=(/(i,i=1,5)/) &
                                             ,i08_s2=(/(i,i=2,6)/)
      integer(kind=4)          ,dimension(6)::i04_b =(/(i,i=1,6)/) &
                                             ,i04_a
      integer*4 error/0/
      i04_a(i01_s1(5:1:-1))=0
      i04_a(i01_s1)=i04_b(i01_s1)
      i04_a(i01_s1)=i04_a(i01_s1)
      i04_a(i01_s1)=i04_b(i01_s1+1)
      i04_a(i01_s1)=i04_a(i01_s1+1)
      i04_a(i01_s2)=i04_b(i01_s1)
      i04_a(i01_s2)=i04_a(i01_s1)
      i04_a(i01_s2-1)=i04_b(i01_s1)
      i04_a(i01_s2-1)=i04_a(i01_s1)
      error=error+check(kind=1)
      i04_a(i01_s1(5:1:-1))=0
      i04_a(i02_s1)=i04_b(i02_s1)
      i04_a(i02_s1)=i04_a(i02_s1)
      i04_a(i02_s1)=i04_b(i02_s1+1)
      i04_a(i02_s1)=i04_a(i02_s1+1)
      i04_a(i02_s2)=i04_b(i02_s1)
      i04_a(i02_s2)=i04_a(i02_s1)
      i04_a(i02_s2-1)=i04_b(i02_s1)
      i04_a(i02_s2-1)=i04_b(i02_s1)
      error=error+check(kind=2)
      i04_a(i01_s1(5:1:-1))=0
      i04_a(i04_s1)=i04_b(i04_s1)
      i04_a(i04_s1)=i04_a(i04_s1)
      i04_a(i04_s1)=i04_b(i04_s1+1)
      i04_a(i04_s1)=i04_a(i04_s1+1)
      i04_a(i04_s2)=i04_b(i04_s1)
      i04_a(i04_s2)=i04_a(i04_s1)
      i04_a(i04_s2-1)=i04_b(i04_s1)
      i04_a(i04_s2-1)=i04_b(i04_s1)
      error=error+check(kind=4)
      i04_a(i01_s1(5:1:-1))=0
      i04_a(i08_s1)=i04_b(i08_s1)
      i04_a(i08_s1)=i04_a(i08_s1)
      i04_a(i08_s1)=i04_b(i08_s1+1)
      i04_a(i08_s1)=i04_a(i08_s1+1)
      i04_a(i08_s2)=i04_b(i08_s1)
      i04_a(i08_s2)=i04_a(i08_s1)
      i04_a(i08_s2-1)=i04_b(i08_s1)
      i04_a(i08_s2-1)=i04_b(i08_s1)
      error=error+check(kind=8)
      if(error .eq. 0) then
         write(6,*) '*** ok ***'
      else
         write(6,*) '*** ng ***'
      endif

      stop
      contains
      integer function check(kind)
      integer*4,optional,intent(in)::kind
      integer*4,parameter,dimension(6)::i04_t=(/1,2,3,4,5,4/)
      check=SIZE(PACK(i04_a,i04_a .ne. i04_t))
      if(check .ne. 0) then
         write(6,*) 'kind=',kind
         write(6,*) 'true value(i04_t):',i04_t
         write(6,*) 'calc value(i04_a):',i04_a
      endif
      return
      end function

      end
