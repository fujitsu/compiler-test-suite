      program main
      character*20 test1
      dimension a(5,4,3,2),b(5,4,3,2)
      integer   i,j,k,l
       do 10 i=1,2
         do 20 j=1,3
           do 30 k=1,4
             do 40 l=1,5
               a(l,k,j,i)=3.3
 40          continue
 30        continue
 20      continue
 10    continue
*
       do 91 i=1,2
         do 91 j=1,3
           do 91 k=1,4
             do 91 l=1,5
               b(l,k,j,i)=3.1
 91    continue
*
       do 11 i=1,2
         do 21 j=1,3
           do 31 k=1,4
             do 41 l=1,5
               if(abs(a(l,k,j,i)-(b(l,k,j,i)+0.2)) > 0.0000005 ) then
                 write( 6,* ) ' ng '
                 stop
               endif
 41          continue
 31        continue
 21      continue
 11    continue
      write( 6,* ) ' ***** ok1 *****'
      write( 6,* ) test1()
      call test2
      stop
      end
      character*20 function test1()
      integer i(17)/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17/
      integer i10,l2i
      character*10 c/'1234567890'/
      character*24 alp/'abcdefghijklmnopqrstuvwxyz'/
      character*2  c2
      do 1 k=1,17
        i(k) = ishft(ishft(i(k),1),-1)
  1   continue
      ia = ichar('a')
      j=10
      test1=' ***** '//
     +        c2(alp(ichar('o')-ia-60/i(10):
     +               ichar('o')-ichar('a')-6 )//'k')//
     +        char(ichar(c(i(10)/10*10:i(i10(j))))
     +        +l2i(btest(l2i(.true.),0))+1)//' ***** '
      return
      end
      integer function i10(i)
      integer i
      i10 = i
      return
      end
      character*2 function c2(c)
      character*(*) c
      c2 = c
      return
      end
      integer function l2i(l)
      logical l
      if( l ) then
        l2i = 1
      else
        l2i = 0
      endif
      return
      end
      subroutine test2
      common /com1/a,b,c,d,e
      equivalence ( a,f )
      equivalence ( g,h )
      equivalence ( o,p )
      a=1
      do 10 i=1,10
      b=a+1/2
      c=a+b
      r=f
      d=a/b
      e=f/2
      g=a+r
      o=b+b+0.5
      h=0
      q=a+c
10    r=r+a+b+c+d+e+f+g+q
      if( r.eq. 10.5 ) then
        call test3
      else
        write(6,*) ' ***** ng ***** '
      endif
      return
      end
      subroutine test3
      return
      end
