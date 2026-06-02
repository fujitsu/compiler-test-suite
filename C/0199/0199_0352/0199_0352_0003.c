#include <stdlib.h>
unsigned int v1 (signed short, unsigned int, unsigned char);
unsigned int (*v2) (signed short, unsigned int, unsigned char) = v1;
void v3 (void);
void (*v4) (void) = v3;
extern unsigned char v5 (signed int, signed short, unsigned int, unsigned char);
extern unsigned char (*v6) (signed int, signed short, unsigned int, unsigned char);
void v7 (signed short);
void (*v8) (signed short) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed short v11 (unsigned char, unsigned int);
extern signed short (*v12) (unsigned char, unsigned int);
extern signed int v13 (unsigned char, signed short, signed short);
extern signed int (*v14) (unsigned char, signed short, signed short);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern unsigned short v19 (signed int, unsigned char, signed char);
extern unsigned short (*v20) (signed int, unsigned char, signed char);
extern signed short v21 (signed short, signed char);
extern signed short (*v22) (signed short, signed char);
extern signed char v25 (unsigned char);
extern signed char (*v26) (unsigned char);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned int v29 (void);
extern unsigned int (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v104 = 7;
unsigned char v103 = 1;
unsigned int v102 = 6U;

void v7 (signed short v105)
{
history[history_index++] = (int)v105;
{
for (;;) {
signed short v108 = 3;
signed short v107 = -1;
unsigned short v106 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v3 (void)
{
{
for (;;) {
unsigned char v111 = 5;
unsigned int v110 = 4U;
signed char v109 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v1 (signed short v112, unsigned int v113, unsigned char v114)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
{
for (;;) {
unsigned int v117 = 2U;
signed int v116 = -4;
signed char v115 = 2;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v118;
unsigned int v119;
signed short v120;
v118 = 6 - 1;
v119 = v117 + 2U;
v120 = v11 (v118, v119);
history[history_index++] = (int)v120;
}
break;
case 2: 
{
unsigned int v121;
v121 = v17 ();
history[history_index++] = (int)v121;
}
break;
case 12: 
return 7U;
default: abort ();
}
}
}
}
