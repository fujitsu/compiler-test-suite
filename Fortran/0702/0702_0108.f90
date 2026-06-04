 call s1
 print *,'pass'
 end
     module m1
      interface x
       subroutine x1(i1,b)
       integer,optional::b
       end subroutine
       subroutine x2(i1,i2,b)
       integer,optional::b
       end subroutine
      end interface 
    end
 subroutine s1
    use m1
    character*30 p
    call x(1,2,b=3)
    rewind 1
    read(1,'(a)') p
    if (p/=' x2 : pass 1 2 T')print *,'fail'
    end
       subroutine x1(i1,b)
       integer,optional::b
       write(1,*)'x1 : pass',i1,present(b)
       end subroutine
       subroutine x2(i1,i2,b)
       integer,optional::b
       write(1,*)'x2 : pass',i1,i2,present(b)
       end subroutine
