      real*4     rb(10),rc(10) ,s
      real*8     db(10),dc(10) ,sd
      data rb/10*1.0/,rc/10*2.0/
      data db/10*1.0/,dc/10*2.0/

      s = 1.0
      sd = 1.0
      do 10 i=1,10
        s = s + rb(i)
        sd = sd + db(i)
  10  continue
      write(6,*) s,sd

      s = 1.0
      sd = 1.0
      n = 6
      do 20 i=1,10
        s = s + 1.0
        sd = sd + 1.0
  20  continue
      write(6,*) s,sd

      s = 1.0
      sd = 1.0
      n = 6
      do 30 i=1,10
        s = s + rc(5)
        sd = sd + dc(n)
  30  continue
      write(6,*) s,sd

      s = 1.0
      sd = 1.0
      n = 6
      do 40 i=1,10
        s = s + ( rc(5) + rb(i) )
        sd = sd + ( db(i) - dc(n) )
  40  continue
      write(6,*) s,sd

      s = 20.0
      sd = 20.0
      n = 6
      do 50 i=1,10
        s = s - rb(i)
        sd = sd - ( db(i) - dc(n) )
  50  continue
      write(6,*) s,sd
      stop
      end
