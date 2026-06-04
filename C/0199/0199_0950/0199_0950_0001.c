#include <stdlib.h>
extern signed short v1 (unsigned int);
extern signed short (*v2) (unsigned int);
extern unsigned short v3 (signed int, unsigned int);
extern unsigned short (*v4) (signed int, unsigned int);
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern signed int v7 (signed char, signed char, signed int);
extern signed int (*v8) (signed char, signed char, signed int);
extern unsigned int v9 (unsigned short, unsigned short, signed int);
extern unsigned int (*v10) (unsigned short, unsigned short, signed int);
signed int v11 (void);
signed int (*v12) (void) = v11;
signed char v13 (unsigned char, unsigned short);
signed char (*v14) (unsigned char, unsigned short) = v13;
static signed int v15 (unsigned int, signed int);
static signed int (*v16) (unsigned int, signed int) = v15;
extern unsigned int v17 (signed char, unsigned char, signed int);
extern unsigned int (*v18) (signed char, unsigned char, signed int);
extern signed short v19 (unsigned int, signed int);
extern signed short (*v20) (unsigned int, signed int);
extern unsigned int v21 (unsigned int, signed char);
extern unsigned int (*v22) (unsigned int, signed char);
extern signed short v23 (signed int, signed int, unsigned short);
extern signed short (*v24) (signed int, signed int, unsigned short);
extern signed short v25 (unsigned int, unsigned short);
extern signed short (*v26) (unsigned int, unsigned short);
extern unsigned short v27 (signed char, signed char, signed char);
extern unsigned short (*v28) (signed char, signed char, signed char);
void v29 (signed short);
void (*v30) (signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v59 = 0;
unsigned short v58 = 4;
unsigned int v57 = 7U;

void v29 (signed short v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned int v63 = 6U;
unsigned short v62 = 5;
unsigned int v61 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed int v15 (unsigned int v64, signed int v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned char v68 = 6;
signed char v67 = 3;
signed char v66 = -1;
trace++;
switch (trace)
{
case 2: 
return v65;
default: abort ();
}
}
}
}

signed char v13 (unsigned char v69, unsigned short v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed int v73 = -2;
unsigned short v72 = 5;
unsigned short v71 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned int v74;
signed int v75;
signed int v76;
v74 = 3U - 1U;
v75 = -1 - v73;
v76 = v15 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 3: 
return 0;
case 5: 
return -3;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
unsigned short v79 = 4;
signed short v78 = 2;
unsigned char v77 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
