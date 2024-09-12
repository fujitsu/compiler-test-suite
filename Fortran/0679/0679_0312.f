      integer*4  ib(10),ic(10) ,is1,is2
      real*4     rb(10),rc(10) ,s
      real*8     db(10),dc(10) ,sd
      data ib/10*1/,ic/10*2/
      data rb/10*1.0/,rc/10*2.0/
      data db/10*1.0/,dc/10*2.0/

      s = 1.0
      sd = 1.0
      do 10 i=1,10
        s = s + ib(i)
        sd = sd + ic(i)
  10  continue
      write(6,*) s,sd

      is1 = 1
      is2 = 1
      do 20 i=1,10
        is1 = is1 + rb(i)
        is2 = is2 + db(i)
  20  continue
      write(6,*) is1,is2

      s = 1.0
      sd = 1.0
      n = 6
      do 30 i=1,10
        s = s + dc(5)
        sd = sd + rc(n)
  30  continue
      write(6,*) s,sd

      s = 1.0
      sd = 1.0
      n = 6
      do 40 i=1,10
        s = s + ( rc(5) + db(i) )
        sd = sd + ( db(i) - rc(n) )
  40  continue
      write(6,*) s,sd

      s = 20.0
      sd = 20.0
      n = 6
      do 50 i=1,10
        s = s - ( db(i) + ic(i) )
        sd = sd - ( ib(i) - rc(n) )
  50  continue
      write(6,*) s,sd
      stop
      end
