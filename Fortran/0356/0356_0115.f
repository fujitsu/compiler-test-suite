      integer*8 def(100),res1(100),res2(100),res3(100),res4(100)
      real*8 ref(100)
      integer res/0/
      do i=1,100
         def(i) = 0
         ref(i) = i
         res1(i) = i
         if (i.gt.96) then
            res2(i) = 0
         else
            res2(i) = i
         endif
         if (i.gt.95) then
            res3(i) = 0
         else
            res3(i) = i
         endif
         res4(i) = 0
      enddo
      res4(1) = 1
      res4(2) = 2

      call sub_unknown(def,ref,100)
      res = ifunc(def, res1, 1)
      def = 0
      call sub_vl(def,ref,100)
      res = res + ifunc(def, res2, 2)
      def = 0
      call sub_mod(def,ref,100)
      res = res + ifunc(def, res3, 3)
      def = 0
      call sub_short(def,ref,100)
      res = res + ifunc(def, res4, 4)
      if (res .eq. 0) then
         write(6,*) "ok"
      endif
      end

      subroutine sub_unknown(def,ref,n)
      integer*8 def(n)
      real*8 ref(n)
      do i=1,n
         def(i) = ref(i)
      enddo
      end
      subroutine sub_vl(def,ref,n)
      integer*8 def(n)
      real*8 ref(n)
      do i=1,96
         def(i) = ref(i)
      enddo
      end
      subroutine sub_mod(def,ref,n)
      integer*8 def(n)
      real*8 ref(n)
      do i=1,95
         def(i) = ref(i)
      enddo
      end
      subroutine sub_short(def,ref,n)
      integer*8 def(n)
      real*8 ref(n)
      do i=1,2
         def(i) = ref(i)
      enddo
      end

      integer function ifunc(calc, master, num)
      integer*8 calc(100), master(100)
      do i=1,100
         if (calc(i) .ne. master(i)) then
            write(6,*) "ng ",num
            write(6,*) calc
            write(6,*) master
            ifunc = 1
            return
         endif
      enddo
      ifunc = 0
      return
      end
