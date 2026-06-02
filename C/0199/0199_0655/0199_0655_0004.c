#include <stdlib.h>
extern signed short v1 (unsigned char, unsigned char, unsigned int);
extern signed short (*v2) (unsigned char, unsigned char, unsigned int);
extern unsigned short v3 (signed char, unsigned char, signed char, signed short);
extern unsigned short (*v4) (signed char, unsigned char, signed char, signed short);
extern unsigned short v5 (signed short, unsigned char, unsigned short, signed char);
extern unsigned short (*v6) (signed short, unsigned char, unsigned short, signed char);
extern signed char v7 (unsigned short, signed short, unsigned char);
extern signed char (*v8) (unsigned short, signed short, unsigned char);
extern signed short v9 (unsigned char);
extern signed short (*v10) (unsigned char);
extern signed int v11 (unsigned char, unsigned char, signed int, signed short);
extern signed int (*v12) (unsigned char, unsigned char, signed int, signed short);
extern signed char v13 (signed short, signed char);
extern signed char (*v14) (signed short, signed char);
extern void v15 (unsigned char, signed char);
extern void (*v16) (unsigned char, signed char);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
signed int v19 (void);
signed int (*v20) (void) = v19;
extern signed int v21 (unsigned short, signed int, unsigned char);
extern signed int (*v22) (unsigned short, signed int, unsigned char);
signed int v23 (unsigned int, unsigned int, signed int);
signed int (*v24) (unsigned int, unsigned int, signed int) = v23;
extern signed short v25 (unsigned short);
extern signed short (*v26) (unsigned short);
extern signed int v27 (unsigned int, unsigned int, unsigned int);
extern signed int (*v28) (unsigned int, unsigned int, unsigned int);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed int v135 = -2;
unsigned int v134 = 2U;
unsigned short v133 = 5;

signed int v23 (unsigned int v136, unsigned int v137, signed int v138)
{
history[history_index++] = (int)v136;
history[history_index++] = (int)v137;
history[history_index++] = (int)v138;
{
for (;;) {
signed short v141 = 0;
unsigned short v140 = 1;
signed short v139 = 3;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v142;
unsigned int v143;
unsigned int v144;
signed int v145;
v142 = v137 + v136;
v143 = 1U + v136;
v144 = v136 + 4U;
v145 = v27 (v142, v143, v144);
history[history_index++] = (int)v145;
}
break;
case 8: 
{
unsigned int v146;
unsigned int v147;
unsigned int v148;
signed int v149;
v146 = v137 - v137;
v147 = 3U + v136;
v148 = v137 - v137;
v149 = v27 (v146, v147, v148);
history[history_index++] = (int)v149;
}
break;
case 10: 
{
unsigned int v150;
unsigned int v151;
unsigned int v152;
signed int v153;
v150 = v136 - v136;
v151 = v137 + 2U;
v152 = 6U + v137;
v153 = v27 (v150, v151, v152);
history[history_index++] = (int)v153;
}
break;
case 12: 
return v138;
default: abort ();
}
}
}
}

signed int v19 (void)
{
{
for (;;) {
unsigned char v156 = 5;
unsigned int v155 = 0U;
signed short v154 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
