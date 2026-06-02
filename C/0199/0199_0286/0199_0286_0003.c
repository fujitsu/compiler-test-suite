#include <stdlib.h>
extern signed int v1 (unsigned short, unsigned int);
extern signed int (*v2) (unsigned short, unsigned int);
extern signed char v3 (unsigned char);
extern signed char (*v4) (unsigned char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (unsigned short, signed int);
extern unsigned char (*v8) (unsigned short, signed int);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
unsigned short v11 (unsigned int, unsigned short, unsigned short, signed int);
unsigned short (*v12) (unsigned int, unsigned short, unsigned short, signed int) = v11;
extern unsigned char v13 (signed short, unsigned char);
extern unsigned char (*v14) (signed short, unsigned char);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
extern unsigned int v17 (unsigned short, signed int);
extern unsigned int (*v18) (unsigned short, signed int);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
void v21 (unsigned int, unsigned short, signed short, signed char);
void (*v22) (unsigned int, unsigned short, signed short, signed char) = v21;
extern signed int v23 (unsigned int);
extern signed int (*v24) (unsigned int);
extern unsigned int v25 (signed short, unsigned char);
extern unsigned int (*v26) (signed short, unsigned char);
extern signed int v27 (signed int, signed char, signed short);
extern signed int (*v28) (signed int, signed char, signed short);
extern signed char v29 (signed int, unsigned char, unsigned char);
extern signed char (*v30) (signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v101 = 2;
unsigned short v100 = 3;
signed char v99 = 0;

void v21 (unsigned int v102, unsigned short v103, signed short v104, signed char v105)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
{
for (;;) {
unsigned char v108 = 4;
unsigned int v107 = 6U;
signed int v106 = -3;
trace++;
switch (trace)
{
case 2: 
{
unsigned int v109;
signed int v110;
v109 = v102 - v102;
v110 = v23 (v109);
history[history_index++] = (int)v110;
}
break;
case 4: 
{
unsigned int v111;
signed int v112;
v111 = v102 + v107;
v112 = v23 (v111);
history[history_index++] = (int)v112;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}

unsigned short v11 (unsigned int v113, unsigned short v114, unsigned short v115, signed int v116)
{
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
{
for (;;) {
signed int v119 = 0;
unsigned short v118 = 5;
signed short v117 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
