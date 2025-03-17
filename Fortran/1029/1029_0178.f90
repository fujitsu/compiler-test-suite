      real(4)::cc4(2)
      real(8)::cc8(2)
      real(16)::cc16(2)

      cc4=(/1.0e0,1.0e0/)
      cc8=(/2.0d0,2.0d0/)
      cc16=(/3.0q0,3.0q0/)

      call sub(cc4,cc8,cc16)
     print *,'pass'
    end

    subroutine sub(cc4,cc8,cc16)
      real(4)::cc4(2)
      real(8)::cc8(2)
      real(16)::cc16(2)

      if (cc4(1).ne.cc8(1) .and. cc4(2).ne.cc8(2)) goto 100
        write(6,*) "NG"
      100 continue
      if (cc8(1).ne.cc16(1) .and. cc8(2).ne.cc16(2)) goto 200
        write(6,*) "NG"
      200 continue
      if (cc4(1).ne.cc16(1) .and. cc4(2).ne.cc16(2)) goto 300
        write(6,*) "NG"
      300 continue
    end
