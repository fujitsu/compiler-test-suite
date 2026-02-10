      call s1
      print *,'pass'
      end
      subroutine s1
      integer*8 ip21,ip22,ip23,ip24,ip25,ip26,malloc
      ip21=malloc(8_8)
      ip22=malloc(8*10_8)
      ip23=malloc(8*10+8_8)
      ip24=malloc(8*8_8)
      ip25=malloc(8*2*2*2_8)
      ip26=malloc(8*2*2*2_8)
      call s12(ip21,ip22,ip23,ip24,ip25,ip26,1,2,10,11,20)
      end
      subroutine s12(ip1,ia1,ia2,ia3,ia4,ia5,x01,x02,x10,x11,x20)
      pointer (ip1,i),(ia1,ia),(ia2,ib),(ia3,ic),(ia4,id)
      pointer (ia5,ie)
      integer ma( 01: 10),x01,x02,x10,x11,x20
      character*4 ia(x01:x10),ib(x11:x20)
      character*4 id(x01:x02,x01:x02,x01:x02)
      character*4 ie(x01:x02,x01:x02,x01:x02)
      character*4 i,ii,jj,xx
      integer  ic(x01:x02,x01:x02)
      ic(2,2)= 11
      i='aaaa'
      ia(1)='aaaa'
      m=2
      if (i.ne.'aaaa' ) print *,'fail'
      if (ia(1).ne.'aaaa' ) print *,'fail'
      if (ic(2,2).ne. 11    ) print *,'fail'
      iv =10
      do 1 j=1,10
         iv=iv+1
         i=char(iv)//char(iv)//char(iv)//char(iv)
         if (i.ne.char(iv)//char(iv)//char(iv)//char(iv))print *,'fail'
         ia(1)='bbbb'
         if (ia(1).ne.'bbbb')print *,'fail'
         ib(ic(m,m))='cccc'
         if (ib(ic(2,2))(1:m*2).ne.'cccc')print *,'fail'
1     continue
      if (i.ne.char(20)//char(20)//char(20)//char(20)) print *,'fail'
      if (ia(1) .ne. 'bbbb' ) print *,'fail'
      if (ib(ic(m,2))(m-1:4).ne.'cccc') print *,'fail'
      k=20
      do 2 j=1,10
         k=k+j
         ma(j)=k
2     continue
      do 3 j=1,10
         write(i,'(i4)') j
         write(ia(2),'(i4)') j
         write(ib(ic(2,m)+1),'(i4)') j
         write(xx,'(i4)') j
         if (i             .ne.xx)print *,'fail'
         if (ia(2)         .ne.xx)print *,'fail'
         if (ib(ic(2,m)+1) .ne.xx)print *,'fail'
3     continue
      do 4 j=1,10
         write(i,'(i4)') j+1
         write(ia(3),'(i4)') j+1
         write(ib(ic(2,m)+m),'(i4)') j+1
         write(1,'(4a)')i,ia(3),ia(3)//ia(3),ib(ic(2,2)+m)
4     continue
      rewind 1
      do 5 j=1,10
         write(xx,'(i4)') j+1
         read (1,'(4a)')ii,jj,ia(4),ib(ic(2,2)+3)
         if (ii           .ne.xx )print *,'fail'
         if (jj           .ne.xx )print *,'fail'
         if (ia(4)        .ne.xx )print *,'fail'
         if (ib(ic(2,2)+3).ne.xx )print *,'fail'
5     continue
      do 6 j=1,10
         i=            '1111'
         ia(6)=        '2222'
         ia(7)=        '3333'
         ia(8)=        '4444'
         ia(9)=        '5555'
         ia(10)=       '6666'
         ib(ic(2,2)+5)='2222'
         ib(ic(2,2)+6)='3333'
         ib(ic(2,2)+7)='4444'
         ib(ic(2,2)+8)='5555'
         ib(ic(2,2)+9)='6666'
         call s111(i,
     1     ia(6),ia(7),ib(ic(2,2)+5),ib(ic(2,2)+6))
         if (i.ne.'0000') print *,'fail'
         if (ia(6)        .ne.'aaaa')  print *,'fail'
         if (ia(7)        .ne.'bbbb')  print *,'fail'
         if (ia(8)        .ne.'cccc')  print *,'fail'
         if (ia(9)        .ne.'dddd')  print *,'fail'
         if (ia(10)       .ne.'eeee')  print *,'fail'
         if (ib(ic(2,2)+5).ne.'aaaa')  print *,'fail'
         if (ib(ic(2,2)+6).ne.'bbbb')  print *,'fail'
         if (ib(ic(2,2)+7).ne.'cccc')  print *,'fail'
         if (ib(ic(2,2)+8).ne.'dddd')  print *,'fail'
         if (ib(ic(2,2)+9).ne.'eeee')  print *,'fail'
6     continue
      do 7 j=1,10
         k=j
         k=k**k
         ma(j)=k
7     continue
      do 8 j=1,10
         i='1111'
         if (len(i).ne.4)print *,'fail'
         ia(2)='2222'
         if (len(ia(2)).ne.4)print *,'fail'
         ib(ic(2,2)+ic(2,2))='3333'
         if (len(ib(2)).ne.4)print *,'fail'
         if (j.le.4) then
           if (len(i(:j)).ne.j)print *,'fail'
           if (len(ia(2)(:j)).ne.j)print *,'fail'
           if (len(ib(ic(2,2)+ic(2,2))(:j)).ne.j)print *,'fail'
         endif
         if (j.le.3) then
           if (len(i(:j+1)).ne.j+1)print *,'fail'
           if (len(ia(2)(:j+1)).ne.j+1)print *,'fail'
           if (len(ib(ic(2,2)+ic(2,2))(:j+1)).ne.j+1)print *,'fail'
         endif
8     continue
      do 9 j1=1,2
      do 9 j2=1,2
      do 9 j3=1,2
      do 9 j4=1,1
      do 9 j5=4,4
        id(j1,j2,j3)(j4:j5)='yyyy'
9     continue
      write(3,'(a)') id
      write(3,'(a)') (((id(j1,j2,j3),j1=1,2),j2=1,2),j3=1,2)
      do10 j3=1,2
      do10 j2=1,2
      do10 j1=1,2
10      if (id(j1,j2,j3).ne.'yyyy')print *,'fail'
      rewind 3
      read (3,'(a)') (((ie(j1,j2,j3),j1=1,2),j2=1,2),j3=1,2)
      do11 j3=1,len(i)-2
      do11 j2=1,len(i)/2
      do11 j1=1,2
        if (id(j1,j2,j3).ne.ie(j1,j2,j3))print *,'fail'
11    continue
      read (3,'(a)')    ie
      do12 j3=1,len(i)/2
      do12 j2=1,len(i)/2
      do12 j1=1,len(i)/2
        if (id(j1,j2,j3).ne.ie(j1,j2,j3))print *,'fail'
12    continue
      call s112(ie,id)
      iu=0
      do13 j3=1,len(i)/2
      do13 j2=1,len(i)/2
      do13 j1=1,len(i)/2
        iu=iu+1
        if (id(j1,j2,j3).ne.'ssss')print *,'fail'
        if (ie(j1,j2,j3).ne.'tttt')print *,'fail'
13    continue
      end
      subroutine s112(ie,id)
      character*(*) ie(*),id(*)
      do 1 k=1,8
        if (len(ie(k)).ne.4) print *,'fail'
        if (ie(k).ne.'yyyy') print *,'fail'
        if (id(k).ne.ie(k) ) print *,'fail'
        id(k)='ssss'
        ie(k)='tttt'
 1    continue
      end
      subroutine s111(i1,ia1,ia2,ib1,ib2)
      dimension ia2(7:10),ib2(7:*)
      character*(*)  i1,ia1,ia2,ib1,ib2
      if (len(i1).ne.4) print *,'fail'
      if (len(ia1   ).ne.4) print *,'fail'
      if (len(ia2(7)).ne.4) print *,'fail'
      if (len(ib1   ).ne.4) print *,'fail'
      if (len(ib2(7)).ne.4) print *,'fail'
      if (i1.ne.'1111') print *,'fail'
      if (ia1.ne.'2222') print *,'fail'
      if (ia2(7).ne.'3333') print *,'fail'
      if (ia2(8).ne.'4444') print *,'fail'
      if (ia2(9).ne.'5555') print *,'fail'
      if (ia2(10).ne.'6666') print *,'fail'
      if (ib1.ne.'2222') print *,'fail'
      if (ib2(7).ne.'3333') print *,'fail'
      if (ib2(8).ne.'4444') print *,'fail'
      if (ib2(9).ne.'5555') print *,'fail'
      if (ib2(10).ne.'6666') print *,'fail'
      i1 ='0000'
      ia1='aaaa'
      ia2(7)= 'bbbb'
      ia2(8)= 'cccc'
      ia2(9)= 'dddd'
      ia2(10)='eeee'
      ib1='aaaa'
      ib2(7)= 'bbbb'
      ib2(8)= 'cccc'
      ib2(9)= 'dddd'
      ib2(10)='eeee'
      end
