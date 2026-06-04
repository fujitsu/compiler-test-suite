#include <stdlib.h>
extern unsigned int v1 (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned int (*v2) (signed char, unsigned char, unsigned short, unsigned char);
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed short v5 (signed int, unsigned char);
extern signed short (*v6) (signed int, unsigned char);
extern signed int v7 (void);
extern signed int (*v8) (void);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern unsigned short v11 (signed int, unsigned short, unsigned int);
extern unsigned short (*v12) (signed int, unsigned short, unsigned int);
extern signed char v13 (signed char);
extern signed char (*v14) (signed char);
extern unsigned char v15 (void);
extern unsigned char (*v16) (void);
extern signed short v17 (unsigned short, unsigned int, signed char);
extern signed short (*v18) (unsigned short, unsigned int, signed char);
extern signed char v19 (unsigned int, unsigned int, signed char);
extern signed char (*v20) (unsigned int, unsigned int, signed char);
extern signed short v21 (void);
extern signed short (*v22) (void);
unsigned int v23 (signed short, unsigned char, unsigned int, unsigned char);
unsigned int (*v24) (signed short, unsigned char, unsigned int, unsigned char) = v23;
extern signed short v25 (unsigned int);
extern signed short (*v26) (unsigned int);
unsigned short v27 (void);
unsigned short (*v28) (void) = v27;
extern void v29 (unsigned int, unsigned char);
extern void (*v30) (unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed char v107 = -2;
signed int v106 = 2;
unsigned int v105 = 7U;

unsigned short v27 (void)
{
{
for (;;) {
signed short v110 = -3;
unsigned short v109 = 2;
unsigned short v108 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (signed short v111, unsigned char v112, unsigned int v113, unsigned char v114)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
signed char v117 = -1;
signed int v116 = -1;
unsigned int v115 = 5U;
trace++;
switch (trace)
{
case 8: 
return v115;
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
signed char v120 = -1;
unsigned int v119 = 5U;
unsigned short v118 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
