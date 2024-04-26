          logical             lval01,lval02,lval03,lval04
          double precision    a10,a11,a12,a13,a31,a32,a33,a34,a35
          double precision    a36,a37,a38,a39,a40,a41
          double precision    f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11
          double precision    f12,f13,f14,f15,f16,f17,f18,f19,f0
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
          data   a1,a2,a3,a4,a5,a6,a7/1ht,1ht,1hf,1ht,1hf,1ht,2hta/
          data   a8,a9,a10,a11/3hf2b,4ht13a,5htafbc,6hfc-31a/
          data   a12,a13,a14,a15/6h   f  ,5h    t,4hf   ,4h   t/
          data   a16,a17,a18,a19,a20/3ht  ,3h f ,3h  t,3hf  ,3ht-1/
          data   a21,a22,a23,a24,a25/3h f3,3ht 2,3hfac,4hf1 b,4hta 3/
          data   a26,a27,a28,a29/4h t2c,4hf 32,4ht b ,4htac /
          data   a30,a31,a32,a33/4hf1 b,5ht2c 1,5hf 3bt,5htac21/
          data   a34,a35,a36,a37/5h f3 b,5h fac ,5hf 1 3,5ht2ba1/
          data   a38,a39,a40,a41 / 6htca2b1,6h f c3 ,6h fa 13,6ht2  ab /
          data   f1,f2,f3,f4    /5h(1l1),5h(2l1),5h(3l1),5h (l2)/
          data   f5,f6,f7,f8    /5h(1l3),5h(1l4),5h (l5),5h (l6)/
          data   f9,f10,f11,f12 /5h(1l6),5h(2l4),5h(4l3),5h (l3)/
          data   f13,f14,f15,f16/5h(2l3),5h(3l4),5h(4l4),5h(1l5)/
          data   f17,f18,f19,f0 /5h(2l5),5h(3l5),5h(4l6),5h     /
   51     format(1h+,44x,a1,21x,a5,31x,l1)
   52     format(1h+,43x,a2,21x,a5,30x,l2)
   53     format(1h+,42x,a3,21x,a5,29x,l3)
   54     format(1h+,41x,a4,21x,a5,28x,l4)
   55     format(1h+,40x,a5,21x,a5,27x,l5)
   56     format(1h+,39x,a6,21x,a5,26x,l6)
   61     format(1h ,102x,l1)
   62     format(1h ,101x,l2)
   63     format(1h ,100x,l3)
   64     format(1h ,099x,l4)
   65     format(1h ,098x,l5)
   66     format(1h ,097x,l6)
      write(6,31501)
31501 format( // 19h + justice + item +,6x,15h+ source data +,10x,
     *       21h+ field description +,10x,17h+ answer result +,12x,
     *            14h+ difference +  / )
31502 format( //19h + justice + item +,11x,15h+ source data +,17x,
     * 21h+ field description +,9x,30h+ answer + difference result +  /
     *)
      i9errc=0
      i9data=0
31550 format(1h0,3x,4h*ok*,4x,1h(,i3,2h )  )
31551 format(1h0,3x,7h*error*,1x,1h(,i3,2h )  )
31552 format(1h0,11x,1h(,i3,2h )  )
31553 format(1h0,3x,4h*ok*    )
31554 format(1h0,3x,7h*error* )
          i9keyc=2
c
          read(5,11) lval01
   11     format(1l1)
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25800
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25900
25800 write(6,31550) i9data
25900 continue
          write(6,51) a1,f1,l9comp
          write(6,61) l9ans1
c
          read(5,12) lval01,lval02
   12     format(2l1)
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25801
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25901
25801 write(6,31550) i9data
25901 continue
          write(6,51) a2,f2,l9comp
          write(6,61) l9ans1
c
          l9ans1 = lval02
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25802
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25902
25802 write(6,31550) i9data
25902 continue
          write(6,51) a3,f0,l9comp
          write(6,61) l9ans1
c
          read(5,13) lval01,lval02,lval03
   13     format(3l1)
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25803
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25903
25803 write(6,31550) i9data
25903 continue
          write(6,51) a4,f3,l9comp
          write(6,61) l9ans1
c
          l9ans1 = lval02
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25804
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25904
25804 write(6,31550) i9data
25904 continue
          write(6,51) a5,f0,l9comp
          write(6,61) l9ans1
c
          l9ans1 = lval03
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25805
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25905
25805 write(6,31550) i9data
25905 continue
          write(6,51) a6,f0,l9comp
          write(6,61) l9ans1
c
          read(5,14) lval01
   14     format(l2)
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25806
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25906
25806 write(6,31550) i9data
25906 continue
          write(6,52) a7,f4,l9comp
          write(6,62) l9ans1
c
          read(5,15) lval01
   15     format(1l3)
          l9ans1 = lval01
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25807
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25907
25807 write(6,31550) i9data
25907 continue
          write(6,53) a8,f5,l9comp
          write(6,63) l9ans1
c
          read(5,16) lval01
   16     format(1l4)
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25808
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25908
25808 write(6,31550) i9data
25908 continue
          write(6,54) a9,f6,l9comp
          write(6,64) l9ans1
c
          read(5,17) lval01
   17     format(l5)
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25809
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25909
25809 write(6,31550) i9data
25909 continue
          write(6,55) a10,f7,l9comp
          write(6,65) l9ans1
c
          read(5,18) lval01
   18     format(l6)
          l9ans1 = lval01
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25810
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25910
25810 write(6,31550) i9data
25910 continue
          write(6,56) a11,f8,l9comp
          write(6,66) l9ans1
c
          read(5,19) lval01
   19     format(1l6)
          l9ans1 = lval01
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25811
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25911
25811 write(6,31550) i9data
25911 continue
          write(6,56) a12,f9,l9comp
          write(6,66) l9ans1
c
          read(5,17) lval01
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25812
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25912
25812 write(6,31550) i9data
25912 continue
          write(6,55) a13, f7,l9comp
          write(6,65) l9ans1
c
          read(5,20) lval01,lval02
   20     format(2l4)
          l9ans1 = lval01
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25813
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25913
25813 write(6,31550) i9data
25913 continue
          write(6,54) a14,f10,l9comp
          write(6,64) l9ans1
c
          l9ans1 = lval02
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25814
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25914
25814 write(6,31550) i9data
25914 continue
          write(6,54) a15, f0,l9comp
          write(6,64) l9ans1
c
          read(5,21) lval01,lval02,lval03,lval04
   21     format(4l3)
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25815
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25915
25815 write(6,31550) i9data
25915 continue
          write(6,53) a16,f11,l9comp
          write(6,63) l9ans1
c
          l9ans1 = lval02
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25816
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25916
25816 write(6,31550) i9data
25916 continue
          write(6,53) a17, f0,l9comp
          write(6,63) l9ans1
c
          l9ans1 = lval03
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25817
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25917
25817 write(6,31550) i9data
25917 continue
          write(6,53) a18, f0,l9comp
          write(6,63) l9ans1
c
          l9ans1 = lval04
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25818
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25918
25818 write(6,31550) i9data
25918 continue
          write(6,53) a19, f0,l9comp
          write(6,63) l9ans1
c
          read(5,22) lval01
   22     format(l3)
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25819
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25919
25819 write(6,31550) i9data
25919 continue
          write(6,53) a20,f12,l9comp
          write(6,63) l9ans1
c
          read(5,15) lval01
          l9ans1 = lval01
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25820
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25920
25820 write(6,31550) i9data
25920 continue
          write(6,53) a21, f5,l9comp
          write(6,63) l9ans1
c
          read(5,23) lval01,lval02
   23     format(2l3)
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25821
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25921
25821 write(6,31550) i9data
25921 continue
          write(6,53) a22,f13,l9comp
          write(6,63) l9ans1
c
          l9ans1 = lval02
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25822
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25922
25822 write(6,31550) i9data
25922 continue
          write(6,53) a23, f0,l9comp
          write(6,63) l9ans1
c
          read(5,24) lval01,lval02,lval03
   24     format(3l4)
          l9ans1 = lval01
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25823
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25923
25823 write(6,31550) i9data
25923 continue
          write(6,54) a24,f14,l9comp
          write(6,64) l9ans1
c
          l9ans1 = lval02
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25824
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25924
25824 write(6,31550) i9data
25924 continue
          write(6,54) a25, f0,l9comp
          write(6,64) l9ans1
c
          l9ans1 = lval03
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25825
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25925
25825 write(6,31550) i9data
25925 continue
          write(6,54) a26, f0,l9comp
          write(6,64) l9ans1
c
          read(5,25) lval01,lval02,lval03,lval04
   25     format(4l4)
          l9ans1 = lval01
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25826
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25926
25826 write(6,31550) i9data
25926 continue
          write(6,54) a27,f15,l9comp
          write(6,64) l9ans1
c
          l9ans1 = lval02
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25827
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25927
25827 write(6,31550) i9data
25927 continue
          write(6,54) a28,f0, l9comp
          write(6,64) l9ans1
c
          l9ans1 = lval03
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25828
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25928
25828 write(6,31550) i9data
25928 continue
          write(6,54) a29,f0, l9comp
          write(6,64) l9ans1
c
          l9ans1 = lval04
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25829
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25929
25829 write(6,31550) i9data
25929 continue
          write(6,54) a30,f0, l9comp
          write(6,64) l9ans1
c
          read(5,17) lval01
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25830
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25930
25830 write(6,31550) i9data
25930 continue
          write(6,55) a31,f7, l9comp
          write(6,65) l9ans1
c
          read(5,26) lval01
   26     format(1l5)
          l9ans1 = lval01
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25831
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25931
25831 write(6,31550) i9data
25931 continue
          write(6,55) a32,f16,l9comp
          write(6,65) l9ans1
c
          read(5,27) lval01,lval02
   27     format(2l5)
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25832
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25932
25832 write(6,31550) i9data
25932 continue
          write(6,55) a33,f17,l9comp
          write(6,65) l9ans1
c
          l9ans1 = lval02
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25833
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25933
25833 write(6,31550) i9data
25933 continue
          write(6,55) a34,f0, l9comp
          write(6,65) l9ans1
c
          read(5,28) lval01,lval02,lval03
   28     format(3l5)
          l9ans1 = lval01
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25834
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25934
25834 write(6,31550) i9data
25934 continue
          write(6,55) a35,f18,l9comp
          write(6,65) l9ans1
c
          l9ans1 = lval02
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25835
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25935
25835 write(6,31550) i9data
25935 continue
          write(6,55) a36,f0, l9comp
          write(6,65) l9ans1
c
          l9ans1 = lval03
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25836
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25936
25836 write(6,31550) i9data
25936 continue
          write(6,55) a37,f0, l9comp
          write(6,65) l9ans1
c
          read(5,29) lval01,lval02,lval03,lval04
   29     format(4l6)
          l9ans1 = lval01
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25837
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25937
25837 write(6,31550) i9data
25937 continue
          write(6,56) a38,f19,l9comp
          write(6,66) l9ans1
c
          l9ans1 = lval02
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25838
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25938
25838 write(6,31550) i9data
25938 continue
          write(6,56) a39,f0, l9comp
          write(6,66) l9ans1
c
          l9ans1 = lval03
          l9comp = .false.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25839
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25939
25839 write(6,31550) i9data
25939 continue
          write(6,56) a40,f0,l9comp
          write(6,66) l9ans1
c
          l9ans1 = lval04
          l9comp = .true.
      i9data = i9data + 1
      if(l9ans1.and.l9comp.or..not.l9ans1.and..not.l9comp) go to 25840
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  25940
25840 write(6,31550) i9data
25940 continue
          write(6,56) a41,f0, l9comp
          write(6,66) l9ans1
      stop
      end
