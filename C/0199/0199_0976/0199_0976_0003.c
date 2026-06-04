#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern signed short v3 (void);
extern signed short (*v4) (void);
unsigned short v5 (unsigned char, unsigned short, unsigned short, unsigned char);
unsigned short (*v6) (unsigned char, unsigned short, unsigned short, unsigned char) = v5;
extern unsigned char v7 (signed short, signed short);
extern unsigned char (*v8) (signed short, signed short);
extern signed short v9 (signed char, signed char, signed short);
extern signed short (*v10) (signed char, signed char, signed short);
extern unsigned int v11 (unsigned short, unsigned char, unsigned short, unsigned int);
extern unsigned int (*v12) (unsigned short, unsigned char, unsigned short, unsigned int);
extern signed short v13 (void);
extern signed short (*v14) (void);
extern unsigned int v15 (signed char, signed int, signed int);
extern unsigned int (*v16) (signed char, signed int, signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern void v19 (unsigned short);
extern void (*v20) (unsigned short);
void v21 (unsigned short, unsigned int, signed int);
void (*v22) (unsigned short, unsigned int, signed int) = v21;
unsigned short v23 (signed char, signed int, unsigned int, unsigned int);
unsigned short (*v24) (signed char, signed int, unsigned int, unsigned int) = v23;
extern signed short v25 (signed char, signed short, signed int);
extern signed short (*v26) (signed char, signed short, signed int);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v100 = 2;
unsigned short v99 = 0;
signed short v98 = -4;

unsigned short v23 (signed char v101, signed int v102, unsigned int v103, unsigned int v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned short v107 = 7;
unsigned int v106 = 5U;
signed int v105 = 3;
trace++;
switch (trace)
{
case 10: 
return 3;
default: abort ();
}
}
}
}

void v21 (unsigned short v108, unsigned int v109, signed int v110)
{
history[history_index++] = (int)v108;
history[history_index++] = (int)v109;
history[history_index++] = (int)v110;
{
for (;;) {
unsigned int v113 = 2U;
unsigned int v112 = 1U;
signed char v111 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v114, unsigned short v115, unsigned short v116, unsigned char v117)
{
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
history[history_index++] = (int)v116;
history[history_index++] = (int)v117;
{
for (;;) {
unsigned short v120 = 4;
signed short v119 = -1;
unsigned char v118 = 1;
trace++;
switch (trace)
{
case 3: 
{
signed short v121;
v121 = v13 ();
history[history_index++] = (int)v121;
}
break;
case 13: 
return v115;
default: abort ();
}
}
}
}
