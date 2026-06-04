#include <stdlib.h>
extern unsigned short v1 (signed char, signed int, signed char);
extern unsigned short (*v2) (signed char, signed int, signed char);
extern signed char v3 (unsigned int);
extern signed char (*v4) (unsigned int);
unsigned short v5 (unsigned char);
unsigned short (*v6) (unsigned char) = v5;
static void v7 (signed char);
static void (*v8) (signed char) = v7;
extern signed int v9 (signed char, signed char);
extern signed int (*v10) (signed char, signed char);
void v11 (signed char);
void (*v12) (signed char) = v11;
extern signed char v13 (void);
extern signed char (*v14) (void);
extern unsigned char v15 (signed short, signed int, signed short);
extern unsigned char (*v16) (signed short, signed int, signed short);
extern unsigned char v17 (signed short, signed char, signed short, unsigned int);
extern unsigned char (*v18) (signed short, signed char, signed short, unsigned int);
extern unsigned char v19 (signed int);
extern unsigned char (*v20) (signed int);
signed short v21 (signed short, unsigned short);
signed short (*v22) (signed short, unsigned short) = v21;
extern void v23 (unsigned short, unsigned short, signed char, signed short);
extern void (*v24) (unsigned short, unsigned short, signed char, signed short);
extern unsigned char v25 (unsigned short, unsigned short, signed int, unsigned short);
extern unsigned char (*v26) (unsigned short, unsigned short, signed int, unsigned short);
extern signed char v27 (unsigned int, unsigned short);
extern signed char (*v28) (unsigned int, unsigned short);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v59 = 7U;
signed short v58 = -4;
unsigned short v57 = 4;

signed int v29 (void)
{
{
for (;;) {
signed int v62 = -1;
signed char v61 = 1;
signed short v60 = -2;
trace++;
switch (trace)
{
case 9: 
return v62;
default: abort ();
}
}
}
}

signed short v21 (signed short v63, unsigned short v64)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = -3;
signed short v66 = 2;
unsigned short v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v11 (signed char v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = -1;
unsigned int v70 = 2U;
unsigned short v69 = 2;
trace++;
switch (trace)
{
case 3: 
return;
case 6: 
{
signed char v72;
v72 = v68 - v71;
v7 (v72);
}
break;
case 14: 
return;
default: abort ();
}
}
}
}

static void v7 (signed char v73)
{
history[history_index++] = (int)v73;
{
for (;;) {
unsigned short v76 = 6;
signed char v75 = 0;
unsigned char v74 = 0;
trace++;
switch (trace)
{
case 7: 
{
signed short v77;
signed char v78;
signed short v79;
unsigned int v80;
unsigned char v81;
v77 = -1 - -1;
v78 = v75 + v73;
v79 = -2 + 0;
v80 = 0U - 1U;
v81 = v17 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 13: 
return;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v82)
{
history[history_index++] = (int)v82;
{
for (;;) {
signed int v85 = 2;
unsigned char v84 = 4;
unsigned int v83 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
