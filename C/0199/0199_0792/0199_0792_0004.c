#include <stdlib.h>
void v1 (void);
void (*v2) (void) = v1;
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed int v5 (signed int, signed int, signed char);
extern signed int (*v6) (signed int, signed int, signed char);
extern unsigned int v7 (signed short);
extern unsigned int (*v8) (signed short);
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern unsigned int v11 (signed char, signed char, unsigned short, signed char);
extern unsigned int (*v12) (signed char, signed char, unsigned short, signed char);
extern signed char v13 (unsigned int, unsigned char, signed char);
extern signed char (*v14) (unsigned int, unsigned char, signed char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned char v21 (signed int, unsigned short, signed char);
extern unsigned char (*v22) (signed int, unsigned short, signed char);
extern signed char v23 (void);
extern signed char (*v24) (void);
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern unsigned short v29 (void);
extern unsigned short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v105 = 1U;
unsigned int v104 = 0U;
unsigned int v103 = 4U;

unsigned char v27 (void)
{
{
for (;;) {
unsigned short v108 = 3;
signed char v107 = -1;
signed char v106 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v1 (void)
{
{
for (;;) {
unsigned short v111 = 1;
signed short v110 = -1;
signed int v109 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned short v112;
v112 = v29 ();
history[history_index++] = (int)v112;
}
break;
case 2: 
{
signed char v113;
v113 = v23 ();
history[history_index++] = (int)v113;
}
break;
case 8: 
{
signed int v114;
unsigned short v115;
v114 = -2 + 2;
v115 = v25 (v114);
history[history_index++] = (int)v115;
}
break;
case 10: 
{
unsigned int v116;
unsigned char v117;
signed char v118;
signed char v119;
v116 = 7U - 3U;
v117 = 7 + 4;
v118 = -4 + 0;
v119 = v13 (v116, v117, v118);
history[history_index++] = (int)v119;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
