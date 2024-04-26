
      module sub_mod
      integer,parameter::N=10
      integer,parameter::ANS=349
      integer,target,dimension(1:N):: aa, bb

      contains
      subroutine init_data
      aa = (/(i,i=10,1,-1)/)
      bb = (/(mod(i,2)+1,i=1,10)/)
      end subroutine init_data

      end module sub_mod

      program main
      use sub_mod
      integer res
      interface
      subroutine treat_data(a,b,N)
      integer,target:: a(N),b(N)
      end subroutine 
      end interface

      call init_data

      aa = aa - 1
      bb = bb + 1

      call treat_data(aa,bb,N)

      aa = aa - 1
      bb = bb + 1

      res = sum(aa) + sum(bb)

      if (res .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end

      subroutine treat_data(a,b,N)
      integer,target:: a(N),b(N)
      integer,pointer::ap_next,ap_end
      integer,pointer::bp_next,bp_end

      i=1
      ap_next => a(i)
      ap_end  => a(N)

      s_loop1: do 30 while (.not.associated(ap_next,ap_end))
         ap_next = ap_next - 1
         j=1
         bp_next => b(j)
         bp_end  => b(N)
         s_loop2: do 20 while (.not.associated(bp_next,bp_end))         
            ap_next = ap_next + bp_next + 1
            j = j + 1
            bp_next => b(j)
 20      enddo s_loop2
         i = i + 1
         ap_next => a(i)
 30   enddo s_loop1

      end subroutine treat_data
