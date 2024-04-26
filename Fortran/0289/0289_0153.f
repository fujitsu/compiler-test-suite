      program main
        integer      a(10,10),b(10,10),c(10,10),intresult(10,10)
        character*10 aa(10),bb(10),cc(10),chresult(10)
        data         a,b,c/300*3/
        data         aa,bb,cc/30*'aabbccddee'/
        data         intresult/5*45,5*3,
     1                         5*45,5*3,
     1                         5*45,5*3,
     1                         5*45,5*3,
     1                         5*45,55*3/
        data         chresult/'aabbccddee',
     1                        ' aabbcddee',
     1                        '  aabcddee',
     1                        7*'aabbccddee'/
        l=5
        m=5
        n=5
        call sub1(a,b,c,l,m,n)
        call sub2(aa,bb,cc,n)
        write(6,*) ' '
        write(6,*) ' #### start  #### '
        do 600 i=1,10,1
        do 600 j=1,10,1
          if (intresult(i,j) .ne. c(i,j)) goto 601
  600   continue
        write(6,*) ' **** (int) ok **** '
        goto 602
  601   write(6,*) ' .... (int) ng ??? .... '
        write(6,*) ' <<<< true      result    >>>> '
        write(6,*) intresult
        write(6,*) ' <<<< execution result    >>>> '
        write(6,*) c
  602   continue
        do 700 j=1,10,1
          if (chresult(j) .ne. cc(j)) goto 701
  700   continue
        write(6,*) ' **** (cha) ok **** '
        goto 702
  701   write(6,*) ' .... (cha) ng ??? .... '
        write(6,*) ' <<<< true      result    >>>> '
        write(6,*) chresult
        write(6,*) ' <<<< execution result    >>>> '
        write(6,*) cc
  702   write(6,*) ' #### end    #### '
        stop
        end
        subroutine sub1(a,b,c,l,m,n)
        integer a(10,*),b(10,*),c(10,*)
        do 1 i=1,l
        do 1 j=1,n
           c(i,j)=0.0
        do 1 k=1,m
           c(i,j)=c(i,j)+a(i,k)*b(k,j)
    1   continue
        end
        subroutine sub2(d,e,f,n)
        character*(*) d(10),e(10),f(10)
        do 11 i=1,3
        do 12 j=1,4
           f(i)(1:n)='          '
   12   continue
        do 13 k=1,5
           f(i)(i:k)=e(i)(1:i+k)//d(k)(2:2)
   13   continue
   11   continue
        end
