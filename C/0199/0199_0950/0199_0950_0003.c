#include <stdlib.h>
extern signed short v1 (unsigned int);
extern signed short (*v2) (unsigned int);
unsigned short v3 (signed int, unsigned int);
unsigned short (*v4) (signed int, unsigned int) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
signed int v7 (signed char, signed char, signed int);
signed int (*v8) (signed char, signed char, signed int) = v7;
extern unsigned int v9 (unsigned short, unsigned short, signed int);
extern unsigned int (*v10) (unsigned short, unsigned short, signed int);
extern signed int v11 (void);
extern signed int (*v12) (void);
extern signed char v13 (unsigned char, unsigned short);
extern signed char (*v14) (unsigned char, unsigned short);
extern unsigned int v17 (signed char, unsigned char, signed int);
extern unsigned int (*v18) (signed char, unsigned char, signed int);
extern signed short v19 (unsigned int, signed int);
extern signed short (*v20) (unsigned int, signed int);
extern unsigned int v21 (unsigned int, signed char);
extern unsigned int (*v22) (unsigned int, signed char);
extern signed short v23 (signed int, signed int, unsigned short);
extern signed short (*v24) (signed int, signed int, unsigned short);
signed short v25 (unsigned int, unsigned short);
signed short (*v26) (unsigned int, unsigned short) = v25;
extern unsigned short v27 (signed char, signed char, signed char);
extern unsigned short (*v28) (signed char, signed char, signed char);
extern void v29 (signed short);
extern void (*v30) (signed short);
extern int history[];
extern int history_index;
extern int trace;
signed short v105 = -2;
signed int v104 = -3;
signed short v103 = -2;

signed short v25 (unsigned int v106, unsigned short v107)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 2;
unsigned short v109 = 1;
unsigned char v108 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (signed char v111, signed char v112, signed int v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 1U;
unsigned short v115 = 4;
signed short v114 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (signed int v117, unsigned int v118)
{
history[history_index++] = (int)v117;
history[history_index++] = (int)v118;
{
for (;;) {
unsigned int v121 = 2U;
signed short v120 = -4;
unsigned int v119 = 7U;
trace++;
switch (trace)
{
case 11: 
return 2;
default: abort ();
}
}
}
}
