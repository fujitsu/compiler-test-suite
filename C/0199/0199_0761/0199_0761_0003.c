#include <stdlib.h>
extern signed char v1 (unsigned short, signed short, unsigned short);
extern signed char (*v2) (unsigned short, signed short, unsigned short);
unsigned short v3 (unsigned char, unsigned char, signed char, signed short);
unsigned short (*v4) (unsigned char, unsigned char, signed char, signed short) = v3;
extern signed int v5 (signed short, unsigned char, unsigned char);
extern signed int (*v6) (signed short, unsigned char, unsigned char);
extern void v9 (signed char);
extern void (*v10) (signed char);
extern signed short v11 (signed char, signed char, signed int);
extern signed short (*v12) (signed char, signed char, signed int);
extern void v13 (unsigned char);
extern void (*v14) (unsigned char);
extern signed char v15 (void);
extern signed char (*v16) (void);
unsigned short v17 (signed short, signed int);
unsigned short (*v18) (signed short, signed int) = v17;
extern signed char v19 (unsigned short, signed char);
extern signed char (*v20) (unsigned short, signed char);
extern signed char v21 (unsigned int, signed char, signed short);
extern signed char (*v22) (unsigned int, signed char, signed short);
extern void v23 (unsigned char, unsigned int, signed int, unsigned int);
extern void (*v24) (unsigned char, unsigned int, signed int, unsigned int);
extern signed char v25 (signed char);
extern signed char (*v26) (signed char);
extern void v27 (void);
extern void (*v28) (void);
signed char v29 (void);
signed char (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v107 = 7;
signed int v106 = -2;
unsigned char v105 = 3;

signed char v29 (void)
{
{
for (;;) {
signed char v110 = 2;
signed int v109 = -2;
signed short v108 = -3;
trace++;
switch (trace)
{
case 2: 
return -2;
case 8: 
return v110;
default: abort ();
}
}
}
}

unsigned short v17 (signed short v111, signed int v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned char v115 = 5;
unsigned int v114 = 1U;
unsigned char v113 = 3;
trace++;
switch (trace)
{
case 11: 
return 0;
default: abort ();
}
}
}
}

unsigned short v3 (unsigned char v116, unsigned char v117, signed char v118, signed short v119)
{
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
history[history_index++] = (int)v119;
{
for (;;) {
unsigned int v122 = 1U;
unsigned short v121 = 6;
unsigned char v120 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
