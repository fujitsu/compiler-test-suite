         program snrtop
       integer i1, i2, i3, i4, i5, i6, i7, i8, i9, i10,
     -         j1, j2, j3, j4, j5, j6, j7, j8, j9, j10
c
       real sumx1, sumx2, sumx3, sumx11,sumx12,sumx13,sumx21,
     -      sumx22,sumx23,sumx31,sumx32,sumx33,sumx41,sumx42,
     -      sumx43,sumx51,sumx52,sumx53,sumx61,sumx62,sumx63
c
       real*8       test0,test1,test2,test3,test4,test5,
     -              test6,test7,test8,test9,testa,testb
c
       integer   ibox(100)
       real      rbox(100)
       real*8    r8box(100)
c
       equivalence (i1,j1,i2,j2,i3,j3),(i4,j4,i5,j5),
     -             (i6,j6,i7,j7,i8,j8),
     -             (i9,i10,j9,j10)
c
       equivalence(sumx1,sumx11,sumx21,sumx31),
     -            (sumx2,sumx12,sumx22,sumx32),
     -            (sumx3,sumx13,sumx23,sumx33),
     -            (sumx41,sumx51,sumx61),
     -            (sumx42,sumx52,sumx62),
     -            (sumx43,sumx53,sumx63)
c
       equivalence (test0,test1,test2,test3,test4,testa),
     -             (test5,test6,test7,test8,test9,testb)
c
       i1=1
       i2=1
       i3=1
       i4=1
       i5=1
       i6=1
       i7=10
       i8=1
       i9=1
       i10=1
       j1=2
       j2=2
       j3=2
       j4=2
       j5=2
       j6=2
       j7=2
       j8=2
       j9=1
       sumx1=0
       sumx2=0
       sumx3=0
       sumx11=1
       sumx12=1
       sumx13=1
       sumx21=2
       sumx22=2
       sumx23=2
       sumx31=3
       sumx32=3
       sumx33=3
       sumx41=0
       sumx42=0
       sumx43=0
       sumx51=1
       sumx52=1
       sumx53=1
       sumx61=2
       sumx62=2
       sumx63=2
       test1=0
       test6=5
       test7=f(5)
       testa=test7+test1
       test2=f(3)
       testb=test2+test6
c
       do100 i=1,100
             ibox(i) =   1
             rbox(i) =   1
             r8box(i) =  1
  100  continue
       i1=k(i5+j7)+k(i6+j8)
       i5=k(i1)+k(j9)
       i2=k(i1)*i5
       i4=k(i7)
       i3=int(i2/i4)
       if(i3 .eq. -25) then
             write(6,*) 'test(i4)==>ok'
       else
             write(6,*) 'test(i4)==>ng'
       end if
c
       sumx1=f(sumx12+sumx13)
       sumx2=f(sumx11/sumx13)
       sumx3=f(sumx12/sumx63)
       if((sumx1 .eq. 21.0) .and.
     -    (sumx2 .eq. 34.0) .and.
     -    (sumx3 .eq. 274.0      )) then
             write(6,*) 'test(r4)==>ok'
       else
             write(6,*) 'test(r4)==>ng'
       end if
       test1=f8(test4+test6)
       test8=f8(test1)
       test5=f8(test1/testa)
       test9=f8(test1/testb)
       if(int(test9) .eq. 278) then
             write(6,*) 'test(r*8)==>ok'
       else
             write(6,*) 'test(r*8)==>ng'
       end if
       end
c
       real function f(x)
       real x
       f=x**2-15
       end
c
       function f8(x)
       real*8 x
       real*4 f8
c
       f8=x**2-100
       end
c
       function k(x)
       integer x
       k=x**2-15
       end
