      program main
       complex*16 a(5,5,5,5),b(5,5,5,5)

       pointer ($a,a),($b,b)
       complex*16,allocatable :: aw(:,:,:,:),bw(:,:,:,:)
       allocate (aw(5,5,5,5))
       allocate (bw(5,5,5,5))
       $a = loc(aw(1,1,1,1))
       $b = loc(bw(1,1,1,1))

       call sub1(a,b)
       call sub2(a,5,5,5,5)
       call sub3(a)
       call sub4(a)
          do 10 i4=1,5
           do 10 i3=1,5
            do 10 i2=1,5
             do 10 i1=1,5
              b(i1,i2,i3,i4)=b(i1,i2,i3,i4)+2.d0**i1
   10         continue
          do 20 i4=1,5
           do 20 i3=1,5
            do 20 i2=1,5
             do 20 i1=1,5
              b(i1,i2,i3,i4)=b(i1,i2,i3,i4)/3.d0
   20         continue
       do 30 i2=1,5
        do 30 i1=1,5
         b(i1,i2,1,1)=b(i1,i2,1,1)*2.d0
   30   continue
       n=0
          do 40 i4=1,5
           do 40 i3=1,5
            do 40 i2=1,5
             do 40 i1=1,5
              if (a(i1,i2,i3,i4)
     1        .ne.b(i1,i2,i3,i4)) then
           print *,'*** *** ng',a(i1,i2,i3,i4)
     1                                      ,b(i1,i2,i3,i4)
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
       complex*16 a(5,5,5,5),b(5,5,5,5)
          do 10 i4=1,5
           do 10 i3=1,5
            do 10 i2=1,5
             do 10 i1=1,5
              a(i1,i2,i3,i4)=-1d1
              b(i1,i2,i3,i4)=-.1d2
   10         continue
      end
      subroutine sub2(a,n1,n2,n3,n4)
       complex*16 a(n1,n2,n3,n4)
          do 10 i4=1,n4
           do 10 i3=1,n3
            do 10 i2=1,n2
             do 10 i1=1,n1
              a(i1,i2,i3,i4)=a(i1,i2,i3,i4)+2.d0**i1
   10         continue
      end
      subroutine sub3(a)
       complex*16 a(2:6,-1:3,3:7,-2:2)
          do 10 i4=  -2,2
           do 10 i3=  3,7
            do 10 i2=-1,3
             do 10 i1=2,6
              a(i1,i2,i3,i4)=a(i1,i2,i3,i4)/3.d0
   10         continue
      end
      subroutine sub4(a)
       complex*16 a(*)
       do 10 i=1,25
        a(i)=a(i)*2.d0
   10   continue
      end
