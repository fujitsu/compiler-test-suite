#include <stdlib.h>
extern signed short v1 (signed char, unsigned short, signed short, signed char);
extern signed short (*v2) (signed char, unsigned short, signed short, signed char);
extern unsigned char v3 (unsigned int, unsigned short, signed short);
extern unsigned char (*v4) (unsigned int, unsigned short, signed short);
extern signed char v5 (signed char, unsigned short);
extern signed char (*v6) (signed char, unsigned short);
extern void v7 (void);
extern void (*v8) (void);
unsigned int v9 (unsigned char, unsigned short, unsigned int);
unsigned int (*v10) (unsigned char, unsigned short, unsigned int) = v9;
extern unsigned int v11 (void);
extern unsigned int (*v12) (void);
extern unsigned int v13 (signed int, unsigned int, signed char);
extern unsigned int (*v14) (signed int, unsigned int, signed char);
extern signed int v15 (signed int);
extern signed int (*v16) (signed int);
extern unsigned int v17 (void);
extern unsigned int (*v18) (void);
extern signed short v19 (signed char);
extern signed short (*v20) (signed char);
extern signed int v21 (unsigned char, unsigned int, signed int);
extern signed int (*v22) (unsigned char, unsigned int, signed int);
static signed short v23 (signed short);
static signed short (*v24) (signed short) = v23;
unsigned char v25 (unsigned int, signed int);
unsigned char (*v26) (unsigned int, signed int) = v25;
extern unsigned int v27 (signed int);
extern unsigned int (*v28) (signed int);
unsigned short v29 (unsigned short, signed int, signed short);
unsigned short (*v30) (unsigned short, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v60 = -3;
unsigned char v59 = 7;
unsigned short v58 = 5;

unsigned short v29 (unsigned short v61, signed int v62, signed short v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
signed int v66 = -4;
unsigned int v65 = 6U;
unsigned short v64 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v25 (unsigned int v67, signed int v68)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed char v71 = -2;
signed char v70 = -1;
unsigned char v69 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

static signed short v23 (signed short v72)
{
history[history_index++] = (int)v72;
{
for (;;) {
signed char v75 = 1;
unsigned char v74 = 2;
signed char v73 = -2;
trace++;
switch (trace)
{
case 2: 
return -3;
default: abort ();
}
}
}
}

unsigned int v9 (unsigned char v76, unsigned short v77, unsigned int v78)
{
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 5;
signed short v80 = -3;
unsigned char v79 = 0;
trace++;
switch (trace)
{
case 1: 
{
signed short v82;
signed short v83;
v82 = v80 - -1;
v83 = v23 (v82);
history[history_index++] = (int)v83;
}
break;
case 3: 
{
signed int v84;
unsigned int v85;
v84 = 1 + -4;
v85 = v27 (v84);
history[history_index++] = (int)v85;
}
break;
case 5: 
{
unsigned int v86;
v86 = v17 ();
history[history_index++] = (int)v86;
}
break;
case 9: 
{
signed int v87;
unsigned int v88;
v87 = -3 - 2;
v88 = v27 (v87);
history[history_index++] = (int)v88;
}
break;
case 11: 
return v78;
default: abort ();
}
}
}
}
