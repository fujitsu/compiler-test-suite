1      real x(3:10)
2      real y(1:3,1,20)
	x=1
	y=2
12     print *,x
13     print *,y
14     end

16     subroutine sub(a,i,b,j)
17     real a(j:*),b(i:j,*)
18     entry ent1
19     entry ent2(a,i,b,j)
20     entry ent3(a,i,b,j)
21     entry ent4
22     entry ent5
23     entry ent6
       a(1:1)=1
       b(1:1,1)=1
26     end

