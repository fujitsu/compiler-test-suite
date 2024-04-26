      program main
      real,dimension(10,10)    :: real_a2,real_b2
      real,dimension(10,10)    :: w_real_a2
      real,allocatable         :: w_real_b2(:,:)
      integer,dimension(10,10) :: int_a2,int_b2
      integer,dimension(10,10) :: w_int_a2
      integer,allocatable      :: w_int_b2(:,:)
      pointer (p1 ,real_a2),(p2 ,int_a2),(p3 ,real_b2),(p4 ,int_b2)
      integer k
      data w_real_a2,w_int_a2/100*1.0,100*1/
      data k/5/
      p1 = loc(w_real_a2(1,1))
      p2 = loc(w_int_a2(1,1))
      allocate (w_real_b2(10,10),w_int_b2(10,10))
      p3 = loc(w_real_b2(1,1))
      p4 = loc(w_int_b2(1,1))

      real_b2 = 1.0
      int_b2  = 1
      i=int(cos(0.0))*5
      real_a2(1:10:2,1)=real_a2(1:10:2,2)+3.0
      i=k
      real_a2(1:10:2,i+1)=real_a2(::2,i+1)/1.0
      int_a2(1:,1)=int_a2(1:,1)+int_a2(1:,1)
      int_a2(1,1)=3
      int_a2(1:,3)=int_a2(1:,2)/1
      real_a2(1,1:10:2)=real_a2(2,1:10:2)+3.0
      i=4
      int_a2(2,1:10:2)=int_a2(2,1:10:2)+int_a2(i,1:5)
      do 10 inc1=1,10,2
        real_b2(inc1,1)=real_b2(inc1,2)+3.0
   10 continue
      do 20 inc1=1,10,2
        real_b2(inc1,6)=real_b2(inc1,6)/1.0
   20 continue
      do 30 inc1=1,10,1
          int_b2(inc1,1)=int_b2(inc1,1)+int_b2(inc1,1)
   30 continue
      int_b2(1,1)=3
      do 40 inc1=1,10
        int_b2(inc1,3)=int_b2(inc1,2)
   40 continue
      do 50 inc1=1,10,2
        real_b2(1,inc1)=real_b2(2,inc1)+3.0
   50 continue
      do 60 inc1=1,5
        int_b2(2,inc1*2-1)=int_b2(2,inc1*2-1)+int_b2(4,inc1)
   60 continue

      do 100 inc1=1,10
        do 100 inc2=1,10
          if (real_a2(inc1,inc2) .ne. real_b2(inc1,inc2)) then
            write(6,*) '*** ng ?? (real) ***'
            write(6,*) 'real_a2(',real_a2,')'
            write(6,*) '"right" ',real_b2
            goto 110
          end if
  100 continue
  110 continue
      do 120 inc1=1,10
        do 120 inc2=1,10
          if (int_a2(inc1,inc2) .ne. int_b2(inc1,inc2)) then
            write(6,*) '*** ng ?? (integer) ***'
            write(6,*) 'int_a2(',int_a2,')'
            write(6,*) '"right" ',int_b2
            goto 130
          end if
  120 continue
  130 continue
      do 140 inc1=1,10
        do 140 inc2=1,10
          if ((real_a2(inc1,inc2) .ne. real_b2(inc1,inc2)) .or.
     1        (int_a2(inc1,inc2) .ne. int_b2(inc1,inc2)))  then
            goto 150
          end if
  140 continue
      write (6,*) '*** ok ***'
  150 continue
      deallocate (w_real_b2,w_int_b2)
      stop
      end
