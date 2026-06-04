 implicit none
 integer:: n=2
  associate(k=>n)
  block
   character(2):: a1*(2)(2)
   character(2):: a2*(2)(k)
   character(2):: a3*(k)(2)
   character(2):: a4*(k)(k)
   character(k):: a5*(2)(2)
   character(k):: a6*(2)(k)
   character(k):: a7*(k)(2)
   character(k):: a8*(k)(k)
   if (len(a1)/=2) print *,1101
   if (len(a2)/=2) print *,1102
   if (len(a3)/=2) print *,1103
   if (len(a4)/=2) print *,1104
   if (len(a5)/=2) print *,1105
   if (len(a6)/=2) print *,1106
   if (len(a7)/=2) print *,1107
   if (len(a8)/=2) print *,1108
   if (size(a1)/=2) print *,1113
   if (size(a2)/=2) print *,1123
   if (size(a3)/=2) print *,1133
   if (size(a4)/=2) print *,1153
   if (size(a5)/=2) print *,1163
   if (size(a6)/=2) print *,1173
   if (size(a7)/=2) print *,1183
   if (size(a8)/=2) print *,1193
  end block
end associate
print *,'sngg113p : pass'
end
