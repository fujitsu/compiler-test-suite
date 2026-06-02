#include <stdlib.h>
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern signed short v5 (signed int, unsigned int);
extern signed short (*v6) (signed int, unsigned int);
extern signed short v7 (unsigned int, unsigned char, unsigned char, unsigned short);
extern signed short (*v8) (unsigned int, unsigned char, unsigned char, unsigned short);
extern void v9 (signed short, unsigned int);
extern void (*v10) (signed short, unsigned int);
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern unsigned short v13 (unsigned char, unsigned char);
extern unsigned short (*v14) (unsigned char, unsigned char);
unsigned int v15 (unsigned int, signed int);
unsigned int (*v16) (unsigned int, signed int) = v15;
extern signed char v17 (void);
extern signed char (*v18) (void);
extern unsigned char v19 (signed short, signed int, unsigned short, unsigned char);
extern unsigned char (*v20) (signed short, signed int, unsigned short, unsigned char);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned char v23 (signed short, unsigned char, unsigned int, signed short);
extern unsigned char (*v24) (signed short, unsigned char, unsigned int, signed short);
extern unsigned char v25 (void);
extern unsigned char (*v26) (void);
extern signed int v27 (signed int, unsigned int, signed char, unsigned int);
extern signed int (*v28) (signed int, unsigned int, signed char, unsigned int);
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v129 = -2;
unsigned int v128 = 1U;
signed short v127 = -1;

unsigned int v15 (unsigned int v130, signed int v131)
{
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
{
for (;;) {
unsigned char v134 = 1;
unsigned short v133 = 7;
unsigned short v132 = 7;
trace++;
switch (trace)
{
case 1: 
{
signed int v135;
unsigned int v136;
signed char v137;
unsigned int v138;
signed int v139;
v135 = -3 - -1;
v136 = v130 - v130;
v137 = 0 - -2;
v138 = 0U + 3U;
v139 = v27 (v135, v136, v137, v138);
history[history_index++] = (int)v139;
}
break;
case 3: 
{
signed int v140;
unsigned int v141;
signed char v142;
unsigned int v143;
signed int v144;
v140 = -1 + v131;
v141 = 7U - v130;
v142 = 3 + 2;
v143 = 7U + 5U;
v144 = v27 (v140, v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 5: 
{
signed int v145;
unsigned int v146;
signed char v147;
unsigned int v148;
signed int v149;
v145 = -3 - v131;
v146 = v130 + v130;
v147 = 2 - 1;
v148 = v130 + 4U;
v149 = v27 (v145, v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 7: 
return v130;
case 9: 
{
signed int v150;
unsigned int v151;
signed char v152;
unsigned int v153;
signed int v154;
v150 = 1 - v131;
v151 = 2U + 2U;
v152 = -1 + 2;
v153 = v130 + 7U;
v154 = v27 (v150, v151, v152, v153);
history[history_index++] = (int)v154;
}
break;
case 11: 
return v130;
case 13: 
return v130;
case 15: 
return v130;
case 17: 
return v130;
default: abort ();
}
}
}
}
