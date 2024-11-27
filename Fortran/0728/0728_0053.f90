 call s1
 print *,'pass'
 end
 subroutine s1
    integer,allocatable::a(:)
    integer aa(5,5),j(26)
    allocate(a(3:1))
    i1=1;i3=3
    a=1
    aa=5
    aa(a,a)=1
    write(1,*)aa(a,a)+aa(a,a),100
    write(1,*)aa+aa,100
    write(1,*)aa(3:1,3:1)+aa(3:1,3:1),100
    write(1,*)aa(i3:i1,i3:i1)+aa(i3:i1,i3:i1),100
   rewind 1
 read(1,*)i;if (i/=100)write(6,*) "NG"
 read(1,*)j;if (any(j/=(/(10,i=1,25),100/)))write(6,*) "NG"
 read(1,*)i;if (i/=100)write(6,*) "NG"
 read(1,*)i;if (i/=100)write(6,*) "NG"
    end
