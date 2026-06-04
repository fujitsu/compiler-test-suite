#include <stdlib.h>
extern unsigned char v1 (signed int, unsigned char);
extern unsigned char (*v2) (signed int, unsigned char);
extern unsigned int v3 (signed int);
extern unsigned int (*v4) (signed int);
extern unsigned int v5 (unsigned char, unsigned short);
extern unsigned int (*v6) (unsigned char, unsigned short);
extern signed char v9 (void);
extern signed char (*v10) (void);
extern signed int v11 (unsigned int, signed short, unsigned char, unsigned int);
extern signed int (*v12) (unsigned int, signed short, unsigned char, unsigned int);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern unsigned char v15 (signed int, unsigned char, unsigned int);
extern unsigned char (*v16) (signed int, unsigned char, unsigned int);
void v17 (void);
void (*v18) (void) = v17;
void v19 (void);
void (*v20) (void) = v19;
extern signed short v21 (signed int, signed char);
extern signed short (*v22) (signed int, signed char);
extern signed int v23 (signed char);
extern signed int (*v24) (signed char);
extern signed short v25 (unsigned char);
extern signed short (*v26) (unsigned char);
signed short v27 (signed int, signed short, unsigned int, signed short);
signed short (*v28) (signed int, signed short, unsigned int, signed short) = v27;
extern unsigned short v29 (unsigned short);
extern unsigned short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v128 = 3;
signed short v127 = 2;
unsigned char v126 = 3;

signed short v27 (signed int v129, signed short v130, unsigned int v131, signed short v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
unsigned int v135 = 2U;
unsigned char v134 = 3;
signed char v133 = 1;
trace++;
switch (trace)
{
case 2: 
{
signed int v136;
unsigned int v137;
v136 = 2 - v129;
v137 = v3 (v136);
history[history_index++] = (int)v137;
}
break;
case 5: 
{
signed int v138;
unsigned int v139;
v138 = -4 + 0;
v139 = v3 (v138);
history[history_index++] = (int)v139;
}
break;
case 8: 
{
signed int v140;
unsigned int v141;
v140 = v129 + v129;
v141 = v3 (v140);
history[history_index++] = (int)v141;
}
break;
case 11: 
return v132;
case 14: 
return v132;
case 17: 
return v130;
case 20: 
return v132;
default: abort ();
}
}
}
}

void v19 (void)
{
{
for (;;) {
signed char v144 = -3;
signed char v143 = -1;
unsigned int v142 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v17 (void)
{
{
for (;;) {
unsigned int v147 = 1U;
signed int v146 = 3;
signed char v145 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
