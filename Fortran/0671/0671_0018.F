      integer*4 i
#define _ocl ocl
#define v_ocl vocl
#define _vocl vocl
#define aa repeat(100000)
*v_ocl loop, repeat(10), aa
*_vocl loop, repeat(10), aa
      do i=1,10
      end do
      print *,"pass"
      end

#define ooo $omp 
#define b ddd
#define sss max
      subroutine test01()
      save
      common /b/ ii,jj
      end subroutine


#define ooo $omp
#define b ddd
      subroutine test02()
      save
      common /b/ ii,jj
      end subroutine
