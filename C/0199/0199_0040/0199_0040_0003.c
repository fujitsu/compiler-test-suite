#include <stdlib.h>
extern signed int v1 (signed char, unsigned int, unsigned short);
extern signed int (*v2) (signed char, unsigned int, unsigned short);
extern void v3 (signed short, unsigned short, signed short, unsigned int);
extern void (*v4) (signed short, unsigned short, signed short, unsigned int);
unsigned short v5 (signed int, signed char, signed int);
unsigned short (*v6) (signed int, signed char, signed int) = v5;
extern unsigned int v7 (void);
extern unsigned int (*v8) (void);
extern unsigned int v9 (unsigned short, signed int);
extern unsigned int (*v10) (unsigned short, signed int);
void v11 (unsigned char, unsigned char, signed short);
void (*v12) (unsigned char, unsigned char, signed short) = v11;
extern unsigned short v13 (signed int);
extern unsigned short (*v14) (signed int);
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed char v17 (void);
extern signed char (*v18) (void);
unsigned int v19 (signed char, signed short, unsigned char, unsigned short);
unsigned int (*v20) (signed char, signed short, unsigned char, unsigned short) = v19;
extern signed int v21 (void);
extern signed int (*v22) (void);
extern void v23 (signed int, unsigned int);
extern void (*v24) (signed int, unsigned int);
extern signed char v25 (signed short, signed short, unsigned int, signed char);
extern signed char (*v26) (signed short, signed short, unsigned int, signed char);
extern signed short v27 (void);
extern signed short (*v28) (void);
extern void v29 (unsigned int, signed char);
extern void (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v94 = 2;
signed char v93 = 0;
signed int v92 = -4;

unsigned int v19 (signed char v95, signed short v96, unsigned char v97, unsigned short v98)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 3;
signed char v100 = 3;
unsigned int v99 = 7U;
trace++;
switch (trace)
{
case 8: 
{
unsigned int v102;
signed char v103;
v102 = v99 - v99;
v103 = v100 + 2;
v29 (v102, v103);
}
break;
case 14: 
return v99;
default: abort ();
}
}
}
}

void v11 (unsigned char v104, unsigned char v105, signed short v106)
{
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
signed char v109 = -3;
signed short v108 = -1;
signed char v107 = 0;
trace++;
switch (trace)
{
case 2: 
{
signed int v110;
v110 = v21 ();
history[history_index++] = (int)v110;
}
break;
case 4: 
return;
default: abort ();
}
}
}
}

unsigned short v5 (signed int v111, signed char v112, signed int v113)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
{
for (;;) {
unsigned int v116 = 7U;
unsigned char v115 = 6;
signed int v114 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
