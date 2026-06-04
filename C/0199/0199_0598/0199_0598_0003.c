#include <stdlib.h>
extern signed short v1 (signed short, signed int);
extern signed short (*v2) (signed short, signed int);
extern unsigned short v3 (unsigned int, unsigned short);
extern unsigned short (*v4) (unsigned int, unsigned short);
extern signed short v5 (unsigned short, signed char);
extern signed short (*v6) (unsigned short, signed char);
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern signed short v9 (signed int, unsigned short, signed char, unsigned short);
extern signed short (*v10) (signed int, unsigned short, signed char, unsigned short);
unsigned int v11 (signed short, signed short);
unsigned int (*v12) (signed short, signed short) = v11;
extern unsigned char v13 (unsigned short, signed char, unsigned char, signed char);
extern unsigned char (*v14) (unsigned short, signed char, unsigned char, signed char);
extern unsigned int v15 (signed int);
extern unsigned int (*v16) (signed int);
unsigned short v17 (unsigned short);
unsigned short (*v18) (unsigned short) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v21 (unsigned char, unsigned char, signed short, signed short);
extern signed char (*v22) (unsigned char, unsigned char, signed short, signed short);
extern void v23 (unsigned short, signed int, signed int, unsigned short);
extern void (*v24) (unsigned short, signed int, signed int, unsigned short);
extern signed char v25 (unsigned char, signed int, unsigned int);
extern signed char (*v26) (unsigned char, signed int, unsigned int);
extern signed short v27 (signed char, unsigned char, unsigned int);
extern signed short (*v28) (signed char, unsigned char, unsigned int);
extern unsigned int v29 (unsigned short, unsigned char);
extern unsigned int (*v30) (unsigned short, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v106 = 6;
unsigned int v105 = 2U;
signed char v104 = 1;

unsigned short v17 (unsigned short v107)
{
history[history_index++] = (int)v107;
{
for (;;) {
unsigned int v110 = 5U;
signed short v109 = -2;
signed short v108 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (signed short v111, signed short v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
unsigned int v115 = 1U;
unsigned int v114 = 5U;
unsigned char v113 = 4;
trace++;
switch (trace)
{
case 4: 
{
signed int v116;
unsigned int v117;
v116 = -4 + 0;
v117 = v15 (v116);
history[history_index++] = (int)v117;
}
break;
case 6: 
return v114;
default: abort ();
}
}
}
}
