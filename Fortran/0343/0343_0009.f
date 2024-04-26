      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
c
31500 format(1h0,1x,4h*ok*,4x,1h( ,i3,2h ))
31510 format(1h0,1x,7h*error*,1x,1h( ,i3,2h ))
31520 format(1h0,1x,4h*ok* )
31530 format(1h0,1x,7h*error* )
31550 format( // 19h + justice + item +,15x,19h+ computed result +,
     *       19x,17h+ compare value +,31x,14h+ difference + / )
      i9keyc=1
      if (i9keyc.eq.0) go to 32010
32000 write(6,31550)
32010 i9keyc = i9keyc + 1
      i9data=0
      i9errc=0
      i9ans1=0
      isw = 0
      do  100  ja = 1,2
      do  100  jb = 7,8
      do  100  jc = 1,100,5
      do  100  jd = 2,2
      do  100  je = 8,10,3
      do  100  jf = 100,105
      do  100  jg = ja,jb,7
      do  100  jh = ja,jd
      do  100  ji = 3,8
      do  100  jj = 1,1
      do  100  jk = 2,2
      do  100  jl = jj,jk
      do  100  jm = 3,4
      do  100  jn = 4,5
      do  100  jo = 5,6
      assign  101  to  i
      go  to  i,(101,100)
   51 go  to  100
  101 go  to  102
  100 isw = 1
  102 if( isw )  103,104,103
  104 i9ans1 = 1
  103 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23000
      if(i9keyc.eq.1) go to 23100
      write(6,31510) i9data
      go to 23100
23000 if(i9keyc.eq.1) go to 23200
      write(6,31500) i9data
      go to 23200
23100 i9errc = i9errc + 1
23200 i9ans1=0
c
      isw = 0
      do  200  ja = 1,1
      do  200  jb = 3,8,4
      do  200  jc = 4,5,1
      do  200  jd = 5,8,2
      do  200  je = 1,3,3
      do  200  jf = 1,1
      do  200  jg = 3,7,4
      do  200  jh = 1,1
      do  200  ji = 1,1
      do  200  jj = 1,1
      do  200  jk = ja,je,3
      do  200  jl = 2,2
      do  200  jm = 3,4
      do  200  jn = 4,4
      do  200  jo = 1,1
      assign  201  to  i
      go  to  i,(200,201)
   52 go  to  200
  201 go  to  202
  200 isw = 1
  202 if( isw )  203,204,203
  204 i9ans1 = 1
  203 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23001
      if(i9keyc.eq.1) go to 23101
      write(6,31510) i9data
      go to 23101
23001 if(i9keyc.eq.1) go to 23201
      write(6,31500) i9data
      go to 23201
23101 i9errc = i9errc + 1
23201 i9ans1=0
c
      do  300  ja = 1,1
      assign  300  to  i
      go  to  i,(300,301,302)
   53 go  to  302
  300 i9ans1 = 1
  301 continue
  302 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23002
      if(i9keyc.eq.1) go to 23102
      write(6,31510) i9data
      go to 23102
23002 if(i9keyc.eq.1) go to 23202
      write(6,31500) i9data
      go to 23202
23102 i9errc = i9errc + 1
23202 i9ans1=0
c
      do  400  ja = 1,1
      assign  400  to  i
      go  to  i,(401,400,402)
   54 go  to  402
  400 i9ans1 = 1
  401 continue
  402 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23003
      if(i9keyc.eq.1) go to 23103
      write(6,31510) i9data
      go to 23103
23003 if(i9keyc.eq.1) go to 23203
      write(6,31500) i9data
      go to 23203
23103 i9errc = i9errc + 1
23203 i9ans1=0
c
      do  500  ja = 2,5,4
      assign  500  to  i
      go  to  i,(501,502,500)
   55 go  to  502
  500 i9ans1 = 1
  501 continue
  502 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23004
      if(i9keyc.eq.1) go to 23104
      write(6,31510) i9data
      go to 23104
23004 if(i9keyc.eq.1) go to 23204
      write(6,31500) i9data
      go to 23204
23104 i9errc = i9errc + 1
23204 i9ans1=0
c
      do  600  ja = 1,3,3
      do  600  jb = 2,4,3
      do  600  jc = 3,5,3
      assign  698  to  i
      go  to  i,(600,601,602,603,604,605,606,607,608,609,
     1           610,611,612,613,614,615,616,617,618,619,
     2           620,621,622,623,624,625,626,627,628,629,
     3           630,631,632,633,634,635,636,637,638,639,
     4           640,641,642,643,644,645,646,647,648,649,
     5           650,651,652,653,654,655,656,657,658,659,
     6           660,661,662,663,664,665,666,667,668,669,
     7           670,671,672,673,674,675,676,677,678,679,
     8           680,681,682,683,684,685,686,687,688,689,
     9           690,691,692,693,694,695,696,697,698,699)
  699 continue
  601 continue
  602 continue
  603 continue
  604 continue
  605 continue
  606 continue
  607 continue
  608 continue
  609 continue
  610 continue
  611 continue
  612 continue
  613 continue
  614 continue
  615 continue
  616 continue
  617 continue
  618 continue
  619 continue
  620 continue
  621 continue
  622 continue
  623 continue
  624 continue
  625 continue
  626 continue
  627 continue
  628 continue
  629 continue
  630 continue
  631 continue
  632 continue
  633 continue
  634 continue
  635 continue
  636 continue
  637 continue
  638 continue
  639 continue
  640 continue
  641 continue
  642 continue
  643 continue
  644 continue
  645 continue
  646 continue
  647 continue
  648 continue
  649 continue
  650 continue
  651 continue
  652 continue
  653 continue
  654 continue
  655 continue
  656 continue
  657 continue
  658 continue
  659 continue
  660 continue
  661 continue
  662 continue
  663 continue
  664 continue
  665 continue
  666 continue
  667 continue
  668 continue
  669 continue
  670 continue
  671 continue
  672 continue
  673 continue
  674 continue
  675 continue
  676 continue
  677 continue
  678 continue
  679 continue
  680 continue
  681 continue
  682 continue
  683 continue
  684 continue
  685 continue
  686 continue
  687 continue
  688 continue
  689 continue
  690 continue
  691 continue
  692 continue
  693 continue
  694 continue
  695 continue
  696 continue
  697 continue
  600 continue
      go  to  700
  698 i9ans1 = 1
  700 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23005
      if(i9keyc.eq.1) go to 23105
      write(6,31510) i9data
      go to 23105
23005 if(i9keyc.eq.1) go to 23205
      write(6,31500) i9data
      go to 23205
23105 i9errc = i9errc + 1
23205 i9ans1=0
c
      assign  801  to  i
      isw = 0
      do  800  ja = 2,2,1
      do  800  jb = 3,5,2
      do  800  jc = 3,7,5
      do  800  jd = ja,jb,5
      do  800  je = 1,8,10
      do  800  jf = 2,2
      go  to  i,(801,802,803,804,805,806,807,808,809,810,
     1           811,812,813,814,815,816,817,818,819,820)
  802 continue
  803 continue
  804 continue
  805 continue
  806 continue
  807 continue
  808 continue
  809 continue
  810 continue
  811 continue
  812 continue
  813 continue
  814 continue
  815 continue
  816 continue
  817 continue
  818 continue
  819 continue
  820 isw = 1
  800 continue
      go  to  821
  801 go  to  800
  821 if( isw )  822,823,822
  823 i9ans1 = 1
  822 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23006
      if(i9keyc.eq.1) go to 23106
      write(6,31510) i9data
      go to 23106
23006 if(i9keyc.eq.1) go to 23206
      write(6,31500) i9data
      go to 23206
23106 i9errc = i9errc + 1
23206 i9ans1=0
c
      assign  920  to  i
      isw = 0
      do  900  ja = 2,3,2
      do  900  jb = 7,7
      do  900  jc = 1,1
      do  900  jd = 2,3,3
      do  900  je = 3,3,2
      do  900  jf = ja,jb
      go  to  i,(901,902,903,904,905,906,907,908,909,910,
     1           911,912,913,914,915,916,917,918,919,920)
  901 continue
  902 continue
  903 continue
  904 continue
  905 continue
  906 continue
  907 continue
  908 continue
  909 continue
  910 continue
  911 continue
  912 continue
  913 continue
  914 continue
  915 continue
  916 continue
  917 continue
  918 continue
  919 isw = 1
  900 continue
      go  to  921
  920 go  to  900
  921 if( isw )  922,923,922
  923 i9ans1 = 1
  922 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23007
      if(i9keyc.eq.1) go to 23107
      write(6,31510) i9data
      go to 23107
23007 if(i9keyc.eq.1) go to 23207
      write(6,31500) i9data
      go to 23207
23107 i9errc = i9errc + 1
23207 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
