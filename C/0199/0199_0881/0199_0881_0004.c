#include <stdlib.h>
extern signed char v1 (unsigned short, signed char);
extern signed char (*v2) (unsigned short, signed char);
extern signed char v3 (signed short, signed int, signed char);
extern signed char (*v4) (signed short, signed int, signed char);
extern signed short v5 (signed short, signed short);
extern signed short (*v6) (signed short, signed short);
extern signed int v9 (signed short, unsigned char, signed short);
extern signed int (*v10) (signed short, unsigned char, signed short);
extern signed short v11 (unsigned int, signed char);
extern signed short (*v12) (unsigned int, signed char);
extern unsigned char v13 (void);
extern unsigned char (*v14) (void);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
signed char v17 (signed short);
signed char (*v18) (signed short) = v17;
extern signed char v19 (signed int, unsigned short, signed int, signed char);
extern signed char (*v20) (signed int, unsigned short, signed int, signed char);
extern signed short v21 (unsigned int, signed char, signed int, signed char);
extern signed short (*v22) (unsigned int, signed char, signed int, signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned char v25 (unsigned char, signed int);
extern unsigned char (*v26) (unsigned char, signed int);
signed short v27 (unsigned char);
signed short (*v28) (unsigned char) = v27;
extern unsigned int v29 (signed char, signed short);
extern unsigned int (*v30) (signed char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v123 = 0U;
signed char v122 = -2;
signed char v121 = 1;

signed short v27 (unsigned char v124)
{
history[history_index++] = (int)v124;
{
for (;;) {
signed short v127 = -1;
unsigned int v126 = 4U;
signed int v125 = 2;
trace++;
switch (trace)
{
case 5: 
return v127;
default: abort ();
}
}
}
}

signed char v17 (signed short v128)
{
history[history_index++] = (int)v128;
{
for (;;) {
unsigned int v131 = 5U;
unsigned int v130 = 4U;
signed short v129 = -2;
trace++;
switch (trace)
{
case 7: 
{
signed char v132;
signed short v133;
unsigned int v134;
v132 = -4 + 2;
v133 = v129 + v128;
v134 = v29 (v132, v133);
history[history_index++] = (int)v134;
}
break;
case 9: 
{
signed char v135;
signed short v136;
unsigned int v137;
v135 = 2 - 1;
v136 = v129 + v129;
v137 = v29 (v135, v136);
history[history_index++] = (int)v137;
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}
