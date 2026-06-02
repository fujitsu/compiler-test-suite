       common /mem/ ptr_ia
       common /work/ia
       integer ia(0:0)
       integer*8 ptr_ia
       integer imem(0:*)
       pointer (ptr_imem, imem)

       integer*8 offset_word
       integer m_mem, i
!
       m_mem = 10
       ptr_ia = loc(ia(0))
       ptr_imem = malloc(m_mem*4)

       offset_word = (ptr_imem - ptr_ia) / 4


       do i = 0, m_mem -1
         ia(i+offset_word) = i
       enddo

      write(34,*) 'imem(0) = ',imem(0)
      write(34,*) 'imem(m_mem-1) = ',imem(m_mem-1)
       print *,'pass'
       end
