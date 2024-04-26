      program main
       real*8 a(5,5,5,5,5,5,5),b(5,5,5,5,5,5,5)
       call sub1(a,b)
       call sub2(a,5,5,5,5,5,5,5)
       call sub3(a)
       call sub4(a)
       do 10 i7=1,5
        do 10 i6=1,5
         do 10 i5=1,5
          do 10 i4=1,5
           do 10 i3=1,5
            do 10 i2=1,5
             do 10 i1=1,5
              b(i1,i2,i3,i4,i5,i6,i7)=b(i1,i2,i3,i4,i5,i6,i7)+2.d0**i1
   10         continue
       do 20 i7=1,5
        do 20 i6=1,5
         do 20 i5=1,5
          do 20 i4=1,5
           do 20 i3=1,5
            do 20 i2=1,5
             do 20 i1=1,5
              b(i1,i2,i3,i4,i5,i6,i7)=b(i1,i2,i3,i4,i5,i6,i7)/3.d0
   20         continue
       do 30 i2=1,5
        do 30 i1=1,5
         b(i1,i2,1,1,1,1,1)=b(i1,i2,1,1,1,1,1)*2.d0
   30   continue
       n=0
       do 40 i7=1,5
        do 40 i6=1,5
         do 40 i5=1,5
          do 40 i4=1,5
           do 40 i3=1,5
            do 40 i2=1,5
             do 40 i1=1,5
              if (a(i1,i2,i3,i4,i5,i6,i7)
     1        .ne.b(i1,i2,i3,i4,i5,i6,i7)) then
              print *,'*** *** ng',a(i1,i2,i3,i4,i5,i6,i7)
     1                                    ,b(i1,i2,i3,i4,i5,i6,i7)
              n=n+1
              end if
   40         continue
       if (n.eq.0.) then
        print *,'*** *** ok'
       else
        print *,'*** total error is ',n,' times.'
        end if
       end
      subroutine sub1(a,b)
       real*8 a(5,5,5,5,5,5,5),b(5,5,5,5,5,5,5)
       do 10 i7=1,5
        do 10 i6=1,5
         do 10 i5=1,5
          do 10 i4=1,5
           do 10 i3=1,5
            do 10 i2=1,5
             do 10 i1=1,5
              a(i1,i2,i3,i4,i5,i6,i7)=-1d1
              b(i1,i2,i3,i4,i5,i6,i7)=-.1d2
   10         continue
      end
      subroutine sub2(a,n1,n2,n3,n4,n5,n6,n7)
       real*8 a(n1,n2,n3,n4,n5,n6,n7)
       do 10 i7=1,n7
        do 10 i6=1,n6
         do 10 i5=1,n5
          do 10 i4=1,n4
           do 10 i3=1,n3
            do 10 i2=1,n2
             do 10 i1=1,n1
              a(i1,i2,i3,i4,i5,i6,i7)=a(i1,i2,i3,i4,i5,i6,i7)+2.d0**i1
   10         continue
      end
      subroutine sub3(a)
       real*8 a(2:6,-1:3,3:7,-2:2,4:8,-3:1,5:9)
       do 10 i7=      5,9
        do 10 i6=    -3,1
         do 10 i5=    4,8
          do 10 i4=  -2,2
           do 10 i3=  3,7
            do 10 i2=-1,3
             do 10 i1=2,6
              a(i1,i2,i3,i4,i5,i6,i7)=a(i1,i2,i3,i4,i5,i6,i7)/3.d0
   10         continue
      end
      subroutine sub4(a)
       real*8 a(*)
       do 10 i=1,25
        a(i)=a(i)*2.d0
   10   continue
      end
