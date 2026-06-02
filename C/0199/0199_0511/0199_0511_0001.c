#include <stdlib.h>
void v1 (unsigned char, signed char);
void (*v2) (unsigned char, signed char) = v1;
extern unsigned short v3 (signed char, unsigned short, unsigned short);
extern unsigned short (*v4) (signed char, unsigned short, unsigned short);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (unsigned int);
extern signed short (*v8) (unsigned int);
extern signed int v9 (signed int);
extern signed int (*v10) (signed int);
extern unsigned short v11 (signed short, signed char, signed short, unsigned char);
extern unsigned short (*v12) (signed short, signed char, signed short, unsigned char);
extern unsigned short v13 (void);
extern unsigned short (*v14) (void);
unsigned int v15 (signed int);
unsigned int (*v16) (signed int) = v15;
extern void v17 (signed int, unsigned short, signed int, signed short);
extern void (*v18) (signed int, unsigned short, signed int, signed short);
extern signed int v19 (unsigned char, signed short);
extern signed int (*v20) (unsigned char, signed short);
extern unsigned char v21 (unsigned char, unsigned int);
extern unsigned char (*v22) (unsigned char, unsigned int);
static unsigned short v23 (signed short, signed short);
static unsigned short (*v24) (signed short, signed short) = v23;
unsigned int v25 (unsigned short, unsigned char);
unsigned int (*v26) (unsigned short, unsigned char) = v25;
extern unsigned int v27 (signed int, unsigned short, signed short, signed short);
extern unsigned int (*v28) (signed int, unsigned short, signed short, signed short);
extern signed int v29 (signed int, unsigned char, unsigned char, signed short);
extern signed int (*v30) (signed int, unsigned char, unsigned char, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v55 = 2;
signed int v54 = 1;
unsigned int v53 = 7U;

unsigned int v25 (unsigned short v56, unsigned char v57)
{
history[history_index++] = (int)v56;
history[history_index++] = (int)v57;
{
for (;;) {
signed int v60 = 1;
unsigned short v59 = 1;
signed short v58 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static unsigned short v23 (signed short v61, signed short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned short v65 = 4;
unsigned int v64 = 4U;
unsigned short v63 = 6;
trace++;
switch (trace)
{
case 4: 
return v65;
default: abort ();
}
}
}
}

unsigned int v15 (signed int v66)
{
history[history_index++] = (int)v66;
{
for (;;) {
unsigned int v69 = 1U;
unsigned short v68 = 1;
signed char v67 = 0;
trace++;
switch (trace)
{
case 3: 
{
signed short v70;
signed short v71;
unsigned short v72;
v70 = -1 - 1;
v71 = 1 - -4;
v72 = v23 (v70, v71);
history[history_index++] = (int)v72;
}
break;
case 5: 
{
unsigned char v73;
signed short v74;
signed int v75;
v73 = 5 + 3;
v74 = 1 - -3;
v75 = v19 (v73, v74);
history[history_index++] = (int)v75;
}
break;
case 7: 
return v69;
case 9: 
return 3U;
default: abort ();
}
}
}
}

void v1 (unsigned char v76, signed char v77)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = 3;
unsigned short v79 = 5;
signed char v78 = -4;
trace++;
switch (trace)
{
case 0: 
return;
case 1: 
{
signed char v81;
unsigned short v82;
unsigned short v83;
unsigned short v84;
v81 = -3 + -3;
v82 = v79 - 5;
v83 = 0 - 5;
v84 = v3 (v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 11: 
return;
default: abort ();
}
}
}
}
