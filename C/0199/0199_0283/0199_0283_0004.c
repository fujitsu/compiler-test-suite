#include <stdlib.h>
extern unsigned char v1 (unsigned char, unsigned char);
extern unsigned char (*v2) (unsigned char, unsigned char);
extern unsigned int v3 (unsigned char, signed short, unsigned char, unsigned char);
extern unsigned int (*v4) (unsigned char, signed short, unsigned char, unsigned char);
extern signed short v5 (signed int, signed short, unsigned int, unsigned int);
extern signed short (*v6) (signed int, signed short, unsigned int, unsigned int);
extern unsigned int v7 (unsigned char, unsigned short, signed char, signed char);
extern unsigned int (*v8) (unsigned char, unsigned short, signed char, signed char);
extern void v9 (void);
extern void (*v10) (void);
extern signed short v11 (signed int);
extern signed short (*v12) (signed int);
extern unsigned short v13 (signed char, signed char, unsigned int);
extern unsigned short (*v14) (signed char, signed char, unsigned int);
extern void v15 (signed short);
extern void (*v16) (signed short);
extern void v17 (unsigned int, signed int);
extern void (*v18) (unsigned int, signed int);
extern signed char v19 (void);
extern signed char (*v20) (void);
signed short v21 (signed short, signed short, signed int);
signed short (*v22) (signed short, signed short, signed int) = v21;
static signed char v23 (signed short, signed short, signed char);
static signed char (*v24) (signed short, signed short, signed char) = v23;
extern signed short v25 (unsigned short, unsigned int, unsigned int, unsigned int);
extern signed short (*v26) (unsigned short, unsigned int, unsigned int, unsigned int);
extern void v27 (void);
extern void (*v28) (void);
extern unsigned int v29 (unsigned short);
extern unsigned int (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v124 = -4;
signed short v123 = 2;
unsigned int v122 = 5U;

static signed char v23 (signed short v125, signed short v126, signed char v127)
{
history[history_index++] = (int)v125;
history[history_index++] = (int)v126;
history[history_index++] = (int)v127;
{
for (;;) {
unsigned short v130 = 4;
signed int v129 = -4;
signed short v128 = -3;
trace++;
switch (trace)
{
case 3: 
return -2;
case 7: 
return v127;
default: abort ();
}
}
}
}

signed short v21 (signed short v131, signed short v132, signed int v133)
{
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
history[history_index++] = (int)v133;
{
for (;;) {
signed int v136 = -2;
unsigned char v135 = 3;
unsigned int v134 = 3U;
trace++;
switch (trace)
{
case 2: 
{
signed short v137;
signed short v138;
signed char v139;
signed char v140;
v137 = v132 + v132;
v138 = v131 - 1;
v139 = -1 + -1;
v140 = v23 (v137, v138, v139);
history[history_index++] = (int)v140;
}
break;
case 4: 
return v131;
case 6: 
{
signed short v141;
signed short v142;
signed char v143;
signed char v144;
v141 = v131 + v132;
v142 = v132 + -2;
v143 = -4 - 2;
v144 = v23 (v141, v142, v143);
history[history_index++] = (int)v144;
}
break;
case 8: 
{
v27 ();
}
break;
case 10: 
return 1;
default: abort ();
}
}
}
}
