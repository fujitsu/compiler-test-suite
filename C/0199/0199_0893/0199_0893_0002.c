#include <stdlib.h>
unsigned int v1 (signed char, signed short);
unsigned int (*v2) (signed char, signed short) = v1;
extern unsigned short v3 (unsigned short, unsigned int);
extern unsigned short (*v4) (unsigned short, unsigned int);
static unsigned char v5 (unsigned char, signed short, signed short, signed int);
static unsigned char (*v6) (unsigned char, signed short, signed short, signed int) = v5;
extern unsigned short v7 (unsigned int);
extern unsigned short (*v8) (unsigned int);
extern void v9 (signed short);
extern void (*v10) (signed short);
extern signed short v11 (signed char, signed short, signed char);
extern signed short (*v12) (signed char, signed short, signed char);
extern unsigned int v13 (signed short, signed short);
extern unsigned int (*v14) (signed short, signed short);
extern unsigned int v15 (void);
extern unsigned int (*v16) (void);
void v17 (unsigned short, signed short, unsigned char, signed short);
void (*v18) (unsigned short, signed short, unsigned char, signed short) = v17;
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern unsigned char v23 (signed int);
extern unsigned char (*v24) (signed int);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern void v29 (unsigned short, unsigned char, signed char, unsigned int);
extern void (*v30) (unsigned short, unsigned char, signed char, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v69 = 7;
unsigned char v68 = 0;
unsigned char v67 = 6;

void v17 (unsigned short v70, signed short v71, unsigned char v72, signed short v73)
{
history[history_index++] = (int)v70;
history[history_index++] = (int)v71;
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 0;
unsigned int v75 = 7U;
signed short v74 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned char v5 (unsigned char v77, signed short v78, signed short v79, signed int v80)
{
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 0U;
unsigned short v82 = 5;
unsigned int v81 = 0U;
trace++;
switch (trace)
{
case 2: 
{
signed int v84;
unsigned char v85;
v84 = 1 + -3;
v85 = v23 (v84);
history[history_index++] = (int)v85;
}
break;
case 6: 
{
signed int v86;
unsigned char v87;
v86 = v80 + 1;
v87 = v23 (v86);
history[history_index++] = (int)v87;
}
break;
case 12: 
return 0;
default: abort ();
}
}
}
}

unsigned int v1 (signed char v88, signed short v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned int v92 = 4U;
unsigned char v91 = 2;
signed char v90 = 3;
trace++;
switch (trace)
{
case 0: 
return v92;
case 1: 
{
unsigned char v93;
signed short v94;
signed short v95;
signed int v96;
unsigned char v97;
v93 = 2 + v91;
v94 = v89 + 0;
v95 = 0 - -2;
v96 = 1 - -2;
v97 = v5 (v93, v94, v95, v96);
history[history_index++] = (int)v97;
}
break;
case 13: 
return v92;
default: abort ();
}
}
}
}
