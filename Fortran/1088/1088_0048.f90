 implicit none
 integer:: n=2
  block
  block
  associate(k=>n)
  block
  block
   character(2):: a1*(2)(2)
   character(2):: a2*(2)(k)
   character(2):: a3*(k)(2)
   character(2):: a4*(k)(k)
   character(k):: a5*(2)(2)
   character(k):: a6*(2)(k)
   character(k):: a7*(k)(2)
   character(k):: a8*(k)(k)
   character(2),dimension(2):: b1*(2)(2)
   character(2),dimension(2):: b2*(2)(k)
   character(2),dimension(2):: b3*(k)(2)
   character(2),dimension(2):: b4*(k)(k)
   character(k),dimension(2):: b5*(2)(2)
   character(k),dimension(2):: b6*(2)(k)
   character(k),dimension(2):: b7*(k)(2)
   character(k),dimension(2):: b8*(k)(k)
   character(2),dimension(k):: c1*(2)(2)
   character(2),dimension(k):: c2*(2)(k)
   character(2),dimension(k):: c3*(k)(2)
   character(2),dimension(k):: c4*(k)(k)
   character(k),dimension(k):: c5*(2)(2)
   character(k),dimension(k):: c6*(2)(k)
   character(k),dimension(k):: c7*(k)(2)
   character(k),dimension(k):: c8*(k)(k)
   character(2):: d1(2)*(2)
   character(2):: d2(k)*(2)
   character(2):: d3(2)*(k)
   character(2):: d4(k)*(k)
   character(k):: d5(2)*(2)
   character(k):: d6(k)*(2)
   character(k):: d7(2)*(k)
   character(k):: d8(k)*(k)
   character(2),dimension(2):: e1(2)*(2)
   character(2),dimension(2):: e2(k)*(2)
   character(2),dimension(2):: e3(2)*(k)
   character(2),dimension(2):: e4(k)*(k)
   character(k),dimension(2):: e5(2)*(2)
   character(k),dimension(2):: e6(k)*(2)
   character(k),dimension(2):: e7(2)*(k)
   character(k),dimension(2):: e8(k)*(k)
   character(2),dimension(k):: f1(2)*(2)
   character(2),dimension(k):: f2(k)*(2)
   character(2),dimension(k):: f3(2)*(k)
   character(2),dimension(k):: f4(k)*(k)
   character(k),dimension(k):: f5(2)*(2)
   character(k),dimension(k):: f6(k)*(2)
   character(k),dimension(k):: f7(2)*(k)
   character(k),dimension(k):: f8(k)*(k)
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
  end block
  end block
end associate
  end block
  end block
print *,'sngg130p : pass'
end
