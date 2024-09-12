      program main
      real*4    a(10),ra(10)
      real*8    da(10)
      real*8    qa(10)
      integer*4 ia(10)
      logical*4 l4a(10)
      logical*1 l1a(10)
      complex*8  ca(10)
      complex*16 c16a(10)
      complex*16 c32a(10)
      character*1  cha(10)
      data a/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data da/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data ra/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data qa/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data ia/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/
      data l4a/5*.true.,5*.false./
      data l1a/5*.true.,5*.false./
      data ca  /2*(1.0,1.0),2*(2.0,2.0),2*(3.0,3.0),2*(4.0,4.0),
     *          2*(5.0,5.0)/
      data c16a/ 2*(1.0,1.0),2*(2.0,2.0),2*(3.0,3.0),2*(4.0,4.0),
     *          2*(5.0,5.0)/
      data c32a/ 2*(1.0,1.0),2*(2.0,2.0),2*(3.0,3.0),2*(4.0,4.0),
     *          2*(5.0,5.0)/
      data cha/'a','b','c','d','e','f','g','h','i','j'/

      do 50 i=1,9
        n=i+1
        z=a(n)
  50  continue
      write(6,*)  a

      do 60 i=1,5
        n=5
        ra(i)   = ra(n+i)
        da(i)   = da(n+i)
        qa(i)   = qa(n+i)
        ia(i)   = ia(n+i)
        l1a(i)  = l1a(n+i)
        l4a(i)  = l4a(n+i)
        ca(i)   = ca(n+i)
        c16a(i) = c16a(n+i)
        c32a(i) = c32a(n+i)
        cha(i)  = cha(n+i)
  60  continue
      write(6,*) 'ra',ra
      write(6,*) 'da',da
      write(6,*) 'qa',qa
      write(6,*) 'ia',ia
      write(6,*) 'l1a',l1a
      write(6,*) 'l4a',l4a
      write(6,*) 'ca',ca
      write(6,*) 'c16a',c16a
      write(6,*) 'c32a',c32a
      write(6,*) 'cha',cha
      stop
      end
