        subroutine sub1(n)
        dimension a(n)
        a = 1
        write(45,*)a
        end
        subroutine sub2(n,k)
        dimension a(n,k)
        a = 1
        write(45,*)a
        end
        subroutine sub3(n,k,m)
        dimension a(n,k,m)
        a = 1
        write(45,*)a
        end
        subroutine sub4(n)
        dimension a(n)
        character*(n) a
        a = '1'
        write(45,*)a
        end
        subroutine sub5(n,k)
        character*(n) a
        dimension a(n,k)
        a = '1'
        write(45,*)a
        end
        subroutine sub6(n,k,m)
        character*(n) a
        dimension a(n,k,m)
        a = '1'
        write(45,*)a
        end
        i=-4
        call sub1(i)
        call sub2(i,i)
        call sub3(i,i,i)
        call sub4(i)
        call sub5(i,i)
        call sub6(i,i,i)
        write(45,*)999
        rewind 45
        read(45,*) kkk;if (kkk/=999)print *,'error'
        print *,'pass'
        end
