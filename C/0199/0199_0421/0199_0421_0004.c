#include <stdlib.h>
extern unsigned short v1 (signed char, signed short, unsigned short);
extern unsigned short (*v2) (signed char, signed short, unsigned short);
extern signed int v3 (unsigned char, unsigned short, unsigned int);
extern signed int (*v4) (unsigned char, unsigned short, unsigned int);
extern signed int v5 (void);
extern signed int (*v6) (void);
extern unsigned short v9 (signed char, signed char, signed short, unsigned short);
extern unsigned short (*v10) (signed char, signed char, signed short, unsigned short);
extern unsigned int v11 (unsigned short, signed char);
extern unsigned int (*v12) (unsigned short, signed char);
extern unsigned char v13 (signed char, signed short, signed int, signed short);
extern unsigned char (*v14) (signed char, signed short, signed int, signed short);
extern void v15 (signed short, unsigned char);
extern void (*v16) (signed short, unsigned char);
extern signed char v17 (unsigned short, unsigned char, signed int, unsigned short);
extern signed char (*v18) (unsigned short, unsigned char, signed int, unsigned short);
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
extern unsigned char v21 (signed char, unsigned short, unsigned char, signed char);
extern unsigned char (*v22) (signed char, unsigned short, unsigned char, signed char);
void v23 (unsigned char, unsigned short);
void (*v24) (unsigned char, unsigned short) = v23;
unsigned int v25 (unsigned char, signed short, signed short, unsigned char);
unsigned int (*v26) (unsigned char, signed short, signed short, unsigned char) = v25;
static unsigned int v27 (void);
static unsigned int (*v28) (void) = v27;
extern signed short v29 (unsigned char, signed short, signed int, unsigned char);
extern signed short (*v30) (unsigned char, signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v125 = 1;
unsigned short v124 = 6;
unsigned int v123 = 3U;

static unsigned int v27 (void)
{
{
for (;;) {
unsigned int v128 = 7U;
unsigned short v127 = 3;
unsigned char v126 = 3;
trace++;
switch (trace)
{
case 7: 
return 7U;
case 9: 
return v128;
case 11: 
return v128;
default: abort ();
}
}
}
}

unsigned int v25 (unsigned char v129, signed short v130, signed short v131, unsigned char v132)
{
history[history_index++] = (int)v129;
history[history_index++] = (int)v130;
history[history_index++] = (int)v131;
history[history_index++] = (int)v132;
{
for (;;) {
signed int v135 = -3;
unsigned short v134 = 3;
signed char v133 = 3;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v136;
v136 = v27 ();
history[history_index++] = (int)v136;
}
break;
case 8: 
{
unsigned int v137;
v137 = v27 ();
history[history_index++] = (int)v137;
}
break;
case 10: 
{
unsigned int v138;
v138 = v27 ();
history[history_index++] = (int)v138;
}
break;
case 12: 
return 2U;
default: abort ();
}
}
}
}

void v23 (unsigned char v139, unsigned short v140)
{
history[history_index++] = (int)v139;
history[history_index++] = (int)v140;
{
for (;;) {
unsigned int v143 = 7U;
signed short v142 = 3;
unsigned char v141 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
