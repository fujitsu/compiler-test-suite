 implicit none
 integer:: n=2
  block
  block
  associate(k=>n)
  block
  block
   character(2):: a1*(2)(2),g2*(2)(k),m1
   character(2):: a2*(2)(k),g3*(k)(2),m2
   character(2):: a3*(k)(2),g4*(k)(k),m3
   character(2):: a4*(k)(k),g5*(2)(2),m4
   character(k):: a5*(2)(2),g6*(2)(k),m5
   character(k):: a6*(2)(k),g7*(k)(2),m6
   character(k):: a7*(k)(2),g8*(k)(k),m7
   character(k):: a8*(k)(k),g1*(2)(2),m8
   character(2),dimension(2):: b1*(2)(2),h3*(k)(2),n1
   character(2),dimension(2):: b2*(2)(k),h4*(k)(k),n2
   character(2),dimension(2):: b3*(k)(2),h5*(2)(2),n3
   character(2),dimension(2):: b4*(k)(k),h6*(2)(k),n4
   character(k),dimension(2):: b5*(2)(2),h7*(k)(2),n5
   character(k),dimension(2):: b6*(2)(k), h8*(k)(k),n6
   character(k),dimension(2):: b7*(k)(2),h1*(2)(2),n7
   character(k),dimension(2):: b8*(k)(k),h2*(2)(k),n8
   character(2),dimension(k):: c1*(2)(2),l4*(k)(k),o1
   character(2),dimension(k):: c2*(2)(k), l5*(2)(2),o2
   character(2),dimension(k):: c3*(k)(2),l6*(2)(k),o3
   character(2),dimension(k):: c4*(k)(k),l7*(k)(2),o4
   character(k),dimension(k):: c5*(2)(2),l8*(k)(k),o5
   character(k),dimension(k):: c6*(2)(k),l1*(2)(2),o6
   character(k),dimension(k):: c7*(k)(2),l2*(2)(k),o7
   character(k),dimension(k):: c8*(k)(k),l3*(k)(2),o8
   character(2):: d1(2)*(2),i5(2)*(2),p1
   character(2):: d2(k)*(2),i6(k)*(2),p2
   character(2):: d3(2)*(k),i7(2)*(k),p3
   character(2):: d4(k)*(k),i8(k)*(k),p4
   character(k):: d5(2)*(2),i1(2)*(2),p5
   character(k):: d6(k)*(2),i2(k)*(2),p6
   character(k):: d7(2)*(k),i3(2)*(k),p7
   character(k):: d8(k)*(k),i4(k)*(k),p8
   character(2),dimension(2):: e1(2)*(2),j8(k)*(k),q1
   character(2),dimension(2):: e2(k)*(2),j7(2)*(k),q2
   character(2),dimension(2):: e3(2)*(k),j6(k)*(2),q3
   character(2),dimension(2):: e4(k)*(k),j5(2)*(2),q4
   character(k),dimension(2):: e5(2)*(2),j4(k)*(k),q5
   character(k),dimension(2):: e6(k)*(2),j3(2)*(k),q6
   character(k),dimension(2):: e7(2)*(k),j2(k)*(2),q7
   character(k),dimension(2):: e8(k)*(k),j1(2)*(2),q8
   character(2),dimension(k):: f1(2)*(2),k1(2)*(2),r1
   character(2),dimension(k):: f2(k)*(2),k2(k)*(2),r2
   character(2),dimension(k):: f3(2)*(k),k3(2)*(k),r3
   character(2),dimension(k):: f4(k)*(k),k4(k)*(k),r4
   character(k),dimension(k):: f5(2)*(2),k5(2)*(2),r5
   character(k),dimension(k):: f6(k)*(2),k6(k)*(2),r6
   character(k),dimension(k):: f7(2)*(k),k7(2)*(k),r7
   character(k),dimension(k):: f8(k)*(k),k8(k)*(k),r8
   if (len(m1)/=2) print *,1101
   if (len(m2)/=2) print *,1102
   if (len(m3)/=2) print *,1103
   if (len(m4)/=2) print *,1104
   if (len(m5)/=2) print *,1105
   if (len(m6)/=2) print *,1106
   if (len(m7)/=2) print *,1107
   if (len(m8)/=2) print *,1108
   if (len(n1)/=2) print *,1101
   if (len(n2)/=2) print *,1102
   if (len(n3)/=2) print *,1103
   if (len(n4)/=2) print *,1104
   if (len(n5)/=2) print *,1105
   if (len(n6)/=2) print *,1106
   if (len(n7)/=2) print *,1107
   if (len(n8)/=2) print *,1108
   if (size(n1)/=2) print *,1113
   if (size(n2)/=2) print *,1123
   if (size(n3)/=2) print *,1133
   if (size(n4)/=2) print *,1153
   if (size(n5)/=2) print *,1163
   if (size(n6)/=2) print *,1173
   if (size(n7)/=2) print *,1183
   if (size(n8)/=2) print *,1193
   if (len(o1)/=2) print *,1101
   if (len(o2)/=2) print *,1102
   if (len(o3)/=2) print *,1103
   if (len(o4)/=2) print *,1104
   if (len(o5)/=2) print *,1105
   if (len(o6)/=2) print *,1106
   if (len(o7)/=2) print *,1107
   if (len(o8)/=2) print *,1108
   if (size(o1)/=2) print *,1113
   if (size(o2)/=2) print *,1123
   if (size(o3)/=2) print *,1133
   if (size(o4)/=2) print *,1153
   if (size(o5)/=2) print *,1163
   if (size(o6)/=2) print *,1173
   if (size(o7)/=2) print *,1183
   if (size(o8)/=2) print *,1193
   if (len(p1)/=2) print *,1101
   if (len(p2)/=2) print *,1102
   if (len(p3)/=2) print *,1103
   if (len(p4)/=2) print *,1104
   if (len(p5)/=2) print *,1105
   if (len(p6)/=2) print *,1106
   if (len(p7)/=2) print *,1107
   if (len(p8)/=2) print *,1108
   if (len(q1)/=2) print *,1101
   if (len(q2)/=2) print *,1102
   if (len(q3)/=2) print *,1103
   if (len(q4)/=2) print *,1104
   if (len(q5)/=2) print *,1105
   if (len(q6)/=2) print *,1106
   if (len(q7)/=2) print *,1107
   if (len(q8)/=2) print *,1108
   if (size(q1)/=2) print *,1113
   if (size(q2)/=2) print *,1123
   if (size(q3)/=2) print *,1133
   if (size(q4)/=2) print *,1153
   if (size(q5)/=2) print *,1163
   if (size(q6)/=2) print *,1173
   if (size(q7)/=2) print *,1183
   if (size(q8)/=2) print *,1193
   if (len(r1)/=2) print *,1101
   if (len(r2)/=2) print *,1102
   if (len(r3)/=2) print *,1103
   if (len(r4)/=2) print *,1104
   if (len(r5)/=2) print *,1105
   if (len(r6)/=2) print *,1106
   if (len(r7)/=2) print *,1107
   if (len(r8)/=2) print *,1108
   if (size(r1)/=2) print *,1113
   if (size(r2)/=2) print *,1123
   if (size(r3)/=2) print *,1133
   if (size(r4)/=2) print *,1153
   if (size(r5)/=2) print *,1163
   if (size(r6)/=2) print *,1173
   if (size(r7)/=2) print *,1183
   if (size(r8)/=2) print *,1193
   if (len(a1)/=2) print *,1101
   if (len(a2)/=2) print *,1102
   if (len(a3)/=2) print *,1103
   if (len(a4)/=2) print *,1104
   if (len(a5)/=2) print *,1105
   if (len(a6)/=2) print *,1106
   if (len(a7)/=2) print *,1107
   if (len(a8)/=2) print *,1108
   if (len(b1)/=2) print *,1101
   if (len(b2)/=2) print *,1102
   if (len(b3)/=2) print *,1103
   if (len(b4)/=2) print *,1104
   if (len(b5)/=2) print *,1105
   if (len(b6)/=2) print *,1106
   if (len(b7)/=2) print *,1107
   if (len(b8)/=2) print *,1108
   if (len(c1)/=2) print *,1101
   if (len(c2)/=2) print *,1102
   if (len(c3)/=2) print *,1103
   if (len(c4)/=2) print *,1104
   if (len(c5)/=2) print *,1105
   if (len(c6)/=2) print *,1106
   if (len(c7)/=2) print *,1107
   if (len(c8)/=2) print *,1108
   if (len(d1)/=2) print *,1101
   if (len(d2)/=2) print *,1102
   if (len(d3)/=2) print *,1103
   if (len(d4)/=2) print *,1104
   if (len(d5)/=2) print *,1105
   if (len(d6)/=2) print *,1106
   if (len(d7)/=2) print *,1107
   if (len(d8)/=2) print *,1108
   if (len(e1)/=2) print *,1101
   if (len(e2)/=2) print *,1102
   if (len(e3)/=2) print *,1103
   if (len(e4)/=2) print *,1104
   if (len(e5)/=2) print *,1105
   if (len(e6)/=2) print *,1106
   if (len(e7)/=2) print *,1107
   if (len(e8)/=2) print *,1108
   if (len(f1)/=2) print *,1101
   if (len(f2)/=2) print *,1102
   if (len(f3)/=2) print *,1103
   if (len(f4)/=2) print *,1104
   if (len(f5)/=2) print *,1105
   if (len(f6)/=2) print *,1106
   if (len(f7)/=2) print *,1107
   if (len(f8)/=2) print *,1108
   if (size(a1)/=2) print *,1113
   if (size(a2)/=2) print *,1123
   if (size(a3)/=2) print *,1133
   if (size(a4)/=2) print *,1153
   if (size(a5)/=2) print *,1163
   if (size(a6)/=2) print *,1173
   if (size(a7)/=2) print *,1183
   if (size(a8)/=2) print *,1193
   if (size(b1)/=2) print *,1113
   if (size(b2)/=2) print *,1123
   if (size(b3)/=2) print *,1133
   if (size(b4)/=2) print *,1153
   if (size(b5)/=2) print *,1163
   if (size(b6)/=2) print *,1173
   if (size(b7)/=2) print *,1183
   if (size(b8)/=2) print *,1193
   if (size(c1)/=2) print *,1113
   if (size(c2)/=2) print *,1123
   if (size(c3)/=2) print *,1133
   if (size(c4)/=2) print *,1153
   if (size(c5)/=2) print *,1163
   if (size(c6)/=2) print *,1173
   if (size(c7)/=2) print *,1183
   if (size(c8)/=2) print *,1193
   if (size(d1)/=2) print *,1113
   if (size(d2)/=2) print *,1123
   if (size(d3)/=2) print *,1133
   if (size(d4)/=2) print *,1153
   if (size(d5)/=2) print *,1163
   if (size(d6)/=2) print *,1173
   if (size(d7)/=2) print *,1183
   if (size(d8)/=2) print *,1193
   if (size(e1)/=2) print *,1113
   if (size(e2)/=2) print *,1123
   if (size(e3)/=2) print *,1133
   if (size(e4)/=2) print *,1153
   if (size(e5)/=2) print *,1163
   if (size(e6)/=2) print *,1173
   if (size(e7)/=2) print *,1183
   if (size(e8)/=2) print *,1193
   if (size(f1)/=2) print *,1113
   if (size(f2)/=2) print *,1123
   if (size(f3)/=2) print *,1133
   if (size(f4)/=2) print *,1153
   if (size(f5)/=2) print *,1163
   if (size(f6)/=2) print *,1173
   if (size(f7)/=2) print *,1183
   if (size(f8)/=2) print *,1193
   if (len(g1)/=2) print *,1101
   if (len(g2)/=2) print *,1102
   if (len(g3)/=2) print *,1103
   if (len(g4)/=2) print *,1104
   if (len(g5)/=2) print *,1105
   if (len(g6)/=2) print *,1106
   if (len(g7)/=2) print *,1107
   if (len(g8)/=2) print *,1108
   if (len(h1)/=2) print *,1101
   if (len(h2)/=2) print *,1102
   if (len(h3)/=2) print *,1103
   if (len(h4)/=2) print *,1104
   if (len(h5)/=2) print *,1105
   if (len(h6)/=2) print *,1106
   if (len(h7)/=2) print *,1107
   if (len(h8)/=2) print *,1108
   if (len(i1)/=2) print *,1101
   if (len(i2)/=2) print *,1102
   if (len(i3)/=2) print *,1103
   if (len(i4)/=2) print *,1104
   if (len(i5)/=2) print *,1105
   if (len(i6)/=2) print *,1106
   if (len(i7)/=2) print *,1107
   if (len(i8)/=2) print *,1108
   if (len(j1)/=2) print *,1101
   if (len(j2)/=2) print *,1102
   if (len(j3)/=2) print *,1103
   if (len(j4)/=2) print *,1104
   if (len(j5)/=2) print *,1105
   if (len(j6)/=2) print *,1106
   if (len(j7)/=2) print *,1107
   if (len(j8)/=2) print *,1108
   if (len(k1)/=2) print *,1101
   if (len(k2)/=2) print *,1102
   if (len(k3)/=2) print *,1103
   if (len(k4)/=2) print *,1104
   if (len(k5)/=2) print *,1105
   if (len(k6)/=2) print *,1106
   if (len(k7)/=2) print *,1107
   if (len(k8)/=2) print *,1108
   if (len(l1)/=2) print *,1101
   if (len(l2)/=2) print *,1102
   if (len(l3)/=2) print *,1103
   if (len(l4)/=2) print *,1104
   if (len(l5)/=2) print *,1105
   if (len(l6)/=2) print *,1106
   if (len(l7)/=2) print *,1107
   if (len(l8)/=2) print *,1108
   if (size(g1)/=2) print *,1113
   if (size(g2)/=2) print *,1123
   if (size(g3)/=2) print *,1133
   if (size(g4)/=2) print *,1153
   if (size(g5)/=2) print *,1163
   if (size(g6)/=2) print *,1173
   if (size(g7)/=2) print *,1183
   if (size(g8)/=2) print *,1193
   if (size(h1)/=2) print *,1113
   if (size(h2)/=2) print *,1123
   if (size(h3)/=2) print *,1133
   if (size(h4)/=2) print *,1153
   if (size(h5)/=2) print *,1163
   if (size(h6)/=2) print *,1173
   if (size(h7)/=2) print *,1183
   if (size(h8)/=2) print *,1193
   if (size(i1)/=2) print *,1113
   if (size(i2)/=2) print *,1123
   if (size(i3)/=2) print *,1133
   if (size(i4)/=2) print *,1153
   if (size(i5)/=2) print *,1163
   if (size(i6)/=2) print *,1173
   if (size(i7)/=2) print *,1183
   if (size(i8)/=2) print *,1193
   if (size(j1)/=2) print *,1113
   if (size(j2)/=2) print *,1123
   if (size(j3)/=2) print *,1133
   if (size(j4)/=2) print *,1153
   if (size(j5)/=2) print *,1163
   if (size(j6)/=2) print *,1173
   if (size(j7)/=2) print *,1183
   if (size(j8)/=2) print *,1193
   if (size(k1)/=2) print *,1113
   if (size(k2)/=2) print *,1123
   if (size(k3)/=2) print *,1133
   if (size(k4)/=2) print *,1153
   if (size(k5)/=2) print *,1163
   if (size(k6)/=2) print *,1173
   if (size(k7)/=2) print *,1183
   if (size(k8)/=2) print *,1193
   if (size(l1)/=2) print *,1113
   if (size(l2)/=2) print *,1123
   if (size(l3)/=2) print *,1133
   if (size(l4)/=2) print *,1153
   if (size(l5)/=2) print *,1163
   if (size(l6)/=2) print *,1173
   if (size(l7)/=2) print *,1183
   if (size(l8)/=2) print *,1193
  end block
  end block
end associate
  end block
  end block
print *,'sngg137p : pass'
end
