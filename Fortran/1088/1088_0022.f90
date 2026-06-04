 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(k),dimension(k):: a1,a2(3),a3
   character(k),dimension(3):: b1(k),b2,b3(k)
   character(3),dimension(k):: c1,c2(3),c3
   character(3),dimension(3):: d1(k),d2,d3(k)
   character(k),dimension(k):: e1,e2(3)*(k),e3
   character(k),dimension(3):: f1(k),f2*(k),f3(k)
   character(3),dimension(k):: g1,g2(3)*(k),g3
   character(3),dimension(3):: h1(k),h2*(k),h3(k)
   character(k),dimension(k):: p1,p2(3)*(k),p3
   character(k),dimension(3):: q1(k),q2*(2),q3(k)
   character(3),dimension(k):: r1,r2(3)*(2),r3
   character(3),dimension(3):: s1(k),s2*(2),s3(k)
   if (size(a1)/=2) print *,101
   if (size(a2)/=3) print *,102
   if (size(a3)/=2) print *,103
   if (size(b1)/=2) print *,201
   if (size(b2)/=3) print *,202
   if (size(b3)/=2) print *,203
   if (size(c1)/=2) print *,301
   if (size(c2)/=3) print *,302
   if (size(c3)/=2) print *,303
   if (size(d1)/=2) print *,401
   if (size(d2)/=3) print *,402
   if (size(d3)/=2) print *,403
   if (size(e1)/=2) print *,2101
   if (size(e2)/=3) print *,2102
   if (size(e3)/=2) print *,2103
   if (size(f1)/=2) print *,3201
   if (size(f2)/=3) print *,3202
   if (size(f3)/=2) print *,3203
   if (size(g1)/=2) print *,3301
   if (size(g2)/=3) print *,3302
   if (size(g3)/=2) print *,3303
   if (size(h1)/=2) print *,3401
   if (size(h2)/=3) print *,3402
   if (size(h3)/=2) print *,3403
   if (size(p1)/=2) print *,4101
   if (size(p2)/=3) print *,4102
   if (size(p3)/=2) print *,4103
   if (size(q1)/=2) print *,4201
   if (size(q2)/=3) print *,4202
   if (size(q3)/=2) print *,4203
   if (size(r1)/=2) print *,4401
   if (size(r2)/=3) print *,4302
   if (size(r3)/=2) print *,4303
   if (size(s1)/=2) print *,4401
   if (size(s2)/=3) print *,4402
   if (size(s3)/=2) print *,4403
   if (len(a1)/=2) print *,1101
   if (len(a2)/=2) print *,1102
   if (len(a3)/=2) print *,1103
   if (len(b1)/=2) print *,1201
   if (len(b2)/=2) print *,1202
   if (len(b3)/=2) print *,1203
   if (len(c1)/=3) print *,1301
   if (len(c2)/=3) print *,1302
   if (len(c3)/=3) print *,1303
   if (len(d1)/=3) print *,1401
   if (len(d2)/=3) print *,1402
   if (len(d3)/=3) print *,1403
   if (len(e1)/=2) print *,1101
   if (len(e2)/=2) print *,1102
   if (len(e3)/=2) print *,1103
   if (len(f1)/=2) print *,1201
   if (len(f2)/=2) print *,1202
   if (len(f3)/=2) print *,1203
   if (len(g1)/=3) print *,1301
   if (len(g2)/=2) print *,1302
   if (len(g3)/=3) print *,1303
   if (len(h1)/=3) print *,1401
   if (len(h2)/=2) print *,1402
   if (len(h3)/=3) print *,1403
   if (len(p1)/=2) print *,1101
   if (len(p2)/=2) print *,1102
   if (len(p3)/=2) print *,1103
   if (len(q1)/=2) print *,1201
   if (len(q2)/=2) print *,1202
   if (len(q3)/=2) print *,1203
   if (len(r1)/=3) print *,1301
   if (len(r2)/=2) print *,1302
   if (len(r3)/=3) print *,1303
   if (len(s1)/=3) print *,1401
   if (len(s2)/=2) print *,1402
   if (len(s3)/=3) print *,1403
  end block
end associate
print *,'sngg104p : pass'
end
