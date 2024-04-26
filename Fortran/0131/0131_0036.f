      integer throw1(10),throw2(10),throw3
      integer count(10) ,disply(21),digit(10)
      integer tcont(10) ,tplay(21)
      integer strike,spare,blank,ransuu
      data    digit/2h 0,2h 1,2h 2,2h 3,2h 4,2h 5,2h 6,
     +              2h 7,2h 8,2h 9/
      data    strike,spare,blank/2h x,2h /,2h  /
      data    throw2,throw3/11*0/
      data    iv/10000000/
*
      data    tcont/  6,  36,  64,  82,  90,  97, 104, 110, 117, 126/
      data    tplay/2h 4,2h 2,2h  ,2h x,2h  ,2h x,2h  ,
     +              2h x,2h 8,2h 0,2h 7,2h 0,2h 5,2h 2,
     +              2h 4,2h 2,2h 7,2h 0,2h 9,2h 0,2h  /

      write(6,*)'#####  - start #####'
      write(6,*)' '

      do 1 i=1,10
        throw1(i)=ransuu(iv,11)
    1 continue
      do 2 i=1,10
        if(throw1(i).eq.10) goto 2
        jv=11-throw1(i)
        throw2(i)=ransuu(iv,jv)
    2 continue

      if(throw1(10).eq.10) goto 3
      if(throw1(10)+throw2(10).eq.10) goto 4
      goto 5

    3 throw2(10)=ransuu(iv,11)
      if(throw2(10).eq.10) goto 4
      throw3=ransuu(iv,11-throw2(10))
      goto 5

    4 throw3=ransuu(iv,11)

    5 do 10 i=1,9
        j1=throw1(i)
        j2=throw2(i)
        if(j1.eq.10) goto 11
        if(j1+j2.eq.10) goto 12
        count(i)=j1+j2
        disply(2*i-1)=digit(j1+1)
        disply(2*i)=digit(j2+1)
        goto 10
   11   k1=throw1(i+1)
        if(k1.eq.10) goto 14
   15   count(i)=10+k1+throw2(i+1)
   16   disply(2*i-1)=blank
        disply(2*i)=strike
        goto 10
   14   if(i.eq.9) goto 15
        count(i)=20+throw1(i+2)
        goto 16
   12   count(i)=10+throw1(i+1)
        disply(2*i-1)=digit(j1+1)
        disply(2*i)=spare
   10 continue

      count(10)=throw1(10)+throw2(10)+throw3
      j1=throw1(10)
      j2=throw2(10)
      if(j1.eq.10) goto 20
      disply(19)=digit(j1+1)
      if(j1+j2.eq.10) goto 21
      disply(20)=digit(j2+1)
      disply(21)=blank
      goto 22
   20 disply(19)=strike
      if(j2.eq.10) goto 23
      disply(20)=digit(j2+1)
      if(j2+throw3.eq.10) goto 24
   26 disply(21)=digit(throw3+1)
      goto 22
   21 disply(20)=spare
   27 if(throw3.eq.10) goto 25
      goto 26
   23 disply(20)=strike
      goto 27
   24 disply(21)=spare
      goto 22
   25 disply(21)=strike

   22 do 30 i=2,10
        count(i)=count(i-1)+count(i)
   30 continue
*
      do 900 i=1,21
        if(disply(i).ne.tplay(i)) goto 999
  900 continue
      do 910 i=1,10
        if(count(i).ne.tcont(i)) goto 999
  910 continue

      write(6,*)'*****  ok - ok - ok   *****'
      goto 1000

  999 write(6,*)'?????  ng - ng - ng   ?????'

 1000 write(6,*)' '
      write(6,*)'#####  -  end  #####'
      stop
      end
*
      integer function ransuu(i,j)
      i=3125*i
      ransuu=abs(i-i/j*j)
      return
      end
