       dimension a(6),b(6)
       write(6,400)
 400   format('  ****         test start   ****')
       do 20 i=1,6
       a(i)=i
       b(i)=i+10
  20   continue
       do 10 i=1,6
       write(10) a(i),b(i)
 100   format(2e15.7)
  10   continue
       rewind 10
       do 30 i=1,4
       read(10) a1,b1
       if(a(i).ne.a1) goto 222
       if(b(i).ne.b1) goto 222
  30   continue
       write(10) a(6),b(6)
       backspace 10
       read(10) a1,b1
       if(a1.ne.a(6)) goto 222
       if(b1.ne.b(6)) goto 222
       write(6,200)
 200   format('  ****         test end ok ok ok ****')
       goto 333
 222   write(6,300)
 300   format('   *****         test end ng ng ng ***')
 333   stop
       end
