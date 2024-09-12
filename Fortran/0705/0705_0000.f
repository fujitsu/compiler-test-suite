      call s1
      print *,'pass'
      end
      subroutine s1
      dimension j(2)
      i=1
      j(2)=1
      if (btest(i,0))goto 1
      print *,'error 1'
1     if (btest(j(2),0))goto 2
      print *,'error 2'
2     if (btest(int(1.0),0))goto 3
      print *,'error 3'
3     if (btest(if(),0))goto 4
      print *,'error 4'
4     continue
      i=2
      j(2)=2
      if (.not.btest(i,1))goto 11
21    if (.not.btest(j(2),1)) goto 12
22    if (.not.btest(int(2.0),1))goto 13
23    if (.not.btest(if(),0))goto 14
      return
11    print *,'error 5'
      goto 21
12    print *,'error 6'
      goto 22
13    print *,'error 7'
      goto 23
14    print *,'error 8'
      return
      end
      function if()
      if=1
      end
