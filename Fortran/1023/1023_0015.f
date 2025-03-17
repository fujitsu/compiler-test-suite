1      block data
2      common /dat/z1,z2,z3,z4,z5,z6,z7,z8,z9,z10
3      integer z1,z2,z3,z4,z5,z6,z7,z8,z9,z10
4      data z1,z2,z3,z4,z5,z6,z7,z8,z9,z10/1,2,3,4,5,6,7,8,9,10/
5      end

7      common /dat/p1,p2,p3,p4,p5,p6,p7,p8,p9,p10
8      integer p1,p2,p3,p4,p5,p6,p7,p8,p9,p10
9      real x(100)
       x=1.0
10     print *,p1, p2, p3, p4, p5, p6, p7, p8, p9, p10
11     call sub(x,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10) 
12     call sub2(x) 
13     stop
14     end

16     subroutine sub(a,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10)
17     integer p1,p2,p3,p4,p5,p6,p7,p8,p9,p10
18     real a(p1+p2+p3+p4+p5+p6+p7+p8+p9+p10)
19     print *,p1+p2+p3+p4+p5+p6+p7+p8+p9+p10
20     print *,a
21     end

23     subroutine sub2(a)
24     common /dat/q1,q2,q3,q4,q5,q6,q7,q8,q9,q10
25     integer q1,q2,q3,q4,q5,q6,q7,q8,q9,q10
26     real a(q1+q2+q3+q4+q5+q6+q7+q8+q9+q10)
27     print *,q1+q2+q3+q4+q5+q6+q7+q8+q9+q10
28     print *,a
29     end
