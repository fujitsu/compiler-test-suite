#include <stdlib.h>
extern unsigned char v3 (void);
extern unsigned char (*v4) (void);
extern unsigned int v5 (unsigned short);
extern unsigned int (*v6) (unsigned short);
extern unsigned short v7 (signed char, unsigned int, signed char);
extern unsigned short (*v8) (signed char, unsigned int, signed char);
void v9 (unsigned int);
void (*v10) (unsigned int) = v9;
unsigned int v11 (unsigned short, signed char);
unsigned int (*v12) (unsigned short, signed char) = v11;
unsigned int v13 (unsigned int, signed char, unsigned char);
unsigned int (*v14) (unsigned int, signed char, unsigned char) = v13;
extern signed short v15 (unsigned short, unsigned short, signed char);
extern signed short (*v16) (unsigned short, unsigned short, signed char);
extern signed char v17 (void);
extern signed char (*v18) (void);
extern void v19 (void);
extern void (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
extern unsigned char v23 (unsigned char, signed short);
extern unsigned char (*v24) (unsigned char, signed short);
extern unsigned int v25 (signed int);
extern unsigned int (*v26) (signed int);
extern void v27 (unsigned int, unsigned char);
extern void (*v28) (unsigned int, unsigned char);
extern void v29 (signed char, unsigned int, unsigned char);
extern void (*v30) (signed char, unsigned int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v104 = 6;
unsigned short v103 = 7;
signed int v102 = -1;

unsigned int v13 (unsigned int v105, signed char v106, unsigned char v107)
{
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
{
for (;;) {
unsigned char v110 = 3;
signed short v109 = 3;
signed short v108 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v11 (unsigned short v111, signed char v112)
{
history[history_index++] = (int)v111;
history[history_index++] = (int)v112;
{
for (;;) {
signed int v115 = 0;
signed short v114 = 0;
unsigned int v113 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v9 (unsigned int v116)
{
history[history_index++] = (int)v116;
{
for (;;) {
unsigned int v119 = 2U;
unsigned int v118 = 0U;
unsigned char v117 = 1;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v120;
v120 = v21 ();
history[history_index++] = (int)v120;
}
break;
case 5: 
{
v19 ();
}
break;
case 7: 
{
unsigned short v121;
unsigned short v122;
signed char v123;
signed short v124;
v121 = 3 + 4;
v122 = 5 + 0;
v123 = 2 - 1;
v124 = v15 (v121, v122, v123);
history[history_index++] = (int)v124;
}
break;
case 9: 
return;
default: abort ();
}
}
}
}
