      call c8
      call c16
      end

      subroutine c8
      complex*8 a(32),b(32),c(32),d(32),resa(32),resd(32)
      data resa/(  15.0,  12.0),(  21.0,  14.0),(  27.0,16.0),
     + (  33.0,  18.0),(  39.0,  20.0),(  45.0,  22.0),
     + (  51.0,  24.0),(  57.0,  26.0),(  63.0,  28.0),
     +  (  69.0,  30.0),(  75.0,  32.0),(  81.0,  34.0),
     +  (  87.0,  36.0),(  93.0,  38.0),(  99.0,  40.0),
     +  ( 105.0,  42.0),( 111.0,  44.0),( 117.0,  46.0),
     +  ( 123.0,  48.0),( 129.0,  50.0),( 135.0,  52.0),
     +  ( 141.0,  54.0),( 147.0,  56.0),( 153.0,  58.0),
     +  ( 159.0,  60.0),( 165.0,  62.0),( 171.0,  64.0),
     +  ( 177.0,  66.0),( 183.0,  68.0),( 189.0,  70.0),
     +  ( 195.0,  72.0),( 201.0,  74.0)/
      data resd/(   3.0,   1.0),(   4.0,   2.0),(   5.0, 3.0),
     + (   6.0,   4.0),(   7.0,   5.0),(   8.0,   6.0),
     + (   9.0,   7.0),(  10.0,   8.0),(  11.0,   9.0),
     + (  12.0,  10.0),(  13.0,  11.0),(  14.0,  12.0),
     + (  15.0,  13.0),(  16.0,  14.0),(  17.0,  15.0),
     + (  18.0,  16.0),(  19.0,  17.0),(  20.0,  18.0),
     + (  21.0,  19.0),(  22.0,  20.0),(  23.0,  21.0),
     + (  24.0,  22.0),(  25.0,  23.0),(  26.0,  24.0),
     + (  27.0,  25.0),(  28.0,  26.0),(  29.0,  27.0),
     + (  30.0,  28.0),(  31.0,  29.0),(  32.0,  30.0),
     + (  33.0,  31.0),(  34.0,  32.0)/

      j = 1
      do i=1,32
         a(i) = 0
         b(i) = cmplx(j,j+1)
         c(i) = cmplx(j+10,j+11)
         d(i) = cmplx(i,i)
         j=j+2
      enddo

      do i=1,32
         a(i) =   imag(b(i))+c(i)+imag(b(i))
         d(i) =   d(i)+2
      enddo

      do i=1,32
         if (a(i).ne.resa(i).or.d(i).ne.resd(i)) goto 10
      enddo
      goto 20
 10   write(6,*) ' ## test c8 NG ## '
      write(6,*) a
      write(6,*) d
      goto 30
 20   write(6,*) ' ## test c8 OK ## '
 30   continue
      end      

      subroutine c16
      complex*16 a(32),b(32),c(32),d(32),resa(32),resd(32)
      data resa/(  15.0,  12.0),(  21.0,  14.0),(  27.0,16.0),
     + (  33.0,  18.0),(  39.0,  20.0),(  45.0,  22.0),
     + (  51.0,  24.0),(  57.0,  26.0),(  63.0,  28.0),
     +  (  69.0,  30.0),(  75.0,  32.0),(  81.0,  34.0),
     +  (  87.0,  36.0),(  93.0,  38.0),(  99.0,  40.0),
     +  ( 105.0,  42.0),( 111.0,  44.0),( 117.0,  46.0),
     +  ( 123.0,  48.0),( 129.0,  50.0),( 135.0,  52.0),
     +  ( 141.0,  54.0),( 147.0,  56.0),( 153.0,  58.0),
     +  ( 159.0,  60.0),( 165.0,  62.0),( 171.0,  64.0),
     +  ( 177.0,  66.0),( 183.0,  68.0),( 189.0,  70.0),
     +  ( 195.0,  72.0),( 201.0,  74.0)/
      data resd/(   3.0,   1.0),(   4.0,   2.0),(   5.0, 3.0),
     + (   6.0,   4.0),(   7.0,   5.0),(   8.0,   6.0),
     + (   9.0,   7.0),(  10.0,   8.0),(  11.0,   9.0),
     + (  12.0,  10.0),(  13.0,  11.0),(  14.0,  12.0),
     + (  15.0,  13.0),(  16.0,  14.0),(  17.0,  15.0),
     + (  18.0,  16.0),(  19.0,  17.0),(  20.0,  18.0),
     + (  21.0,  19.0),(  22.0,  20.0),(  23.0,  21.0),
     + (  24.0,  22.0),(  25.0,  23.0),(  26.0,  24.0),
     + (  27.0,  25.0),(  28.0,  26.0),(  29.0,  27.0),
     + (  30.0,  28.0),(  31.0,  29.0),(  32.0,  30.0),
     + (  33.0,  31.0),(  34.0,  32.0)/
      j = 1
      do i=1,32
         a(i) = 0
         b(i) = cmplx(j,j+1)
         c(i) = cmplx(j+10,j+11)
         d(i) = cmplx(i,i)
         j=j+2
      enddo

      do i=1,32
         a(i) =   dimag(b(i))+c(i)+dimag(b(i))
         d(i) =   d(i)+2
      enddo

      do i=1,32
         if (a(i).ne.resa(i).or.d(i).ne.resd(i)) goto 10
      enddo
      goto 20
 10   write(6,*) ' ## test c16 NG ## '
      write(6,*) a
      write(6,*) d
      goto 30
 20   write(6,*) ' ## test c16 OK ## '
 30   continue

      end      
