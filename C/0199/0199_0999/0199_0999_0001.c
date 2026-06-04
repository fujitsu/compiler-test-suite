#include <stdlib.h>
extern unsigned int v3 (unsigned short);
extern unsigned int (*v4) (unsigned short);
extern signed char v5 (unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, unsigned char);
extern signed short v7 (signed short, unsigned int, unsigned short);
extern signed short (*v8) (signed short, unsigned int, unsigned short);
signed short v9 (void);
signed short (*v10) (void) = v9;
extern unsigned short v11 (void);
extern unsigned short (*v12) (void);
extern signed int v13 (void);
extern signed int (*v14) (void);
extern void v15 (unsigned char, signed char);
extern void (*v16) (unsigned char, signed char);
extern void v17 (unsigned int, unsigned char, unsigned short);
extern void (*v18) (unsigned int, unsigned char, unsigned short);
extern signed short v19 (signed short, signed short, signed char);
extern signed short (*v20) (signed short, signed short, signed char);
static unsigned short v21 (void);
static unsigned short (*v22) (void) = v21;
unsigned char v23 (unsigned int, signed short, unsigned char, signed short);
unsigned char (*v24) (unsigned int, signed short, unsigned char, signed short) = v23;
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
extern signed char v29 (unsigned short);
extern signed char (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v56 = 5U;
signed char v55 = -3;
unsigned char v54 = 1;

signed char v25 (void)
{
{
for (;;) {
signed short v59 = -2;
signed char v58 = -2;
signed short v57 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v23 (unsigned int v60, signed short v61, unsigned char v62, signed short v63)
{
history[history_index++] = (int)v60;
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned char v66 = 3;
signed short v65 = -1;
unsigned char v64 = 2;
trace++;
switch (trace)
{
case 9: 
return 2;
case 11: 
return v62;
default: abort ();
}
}
}
}

static unsigned short v21 (void)
{
{
for (;;) {
unsigned short v69 = 3;
signed int v68 = 0;
signed int v67 = 0;
trace++;
switch (trace)
{
case 6: 
{
unsigned short v70;
v70 = v27 ();
history[history_index++] = (int)v70;
}
break;
case 14: 
return 6;
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
signed int v73 = -3;
signed int v72 = 3;
unsigned char v71 = 6;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v74;
signed char v75;
v74 = 1 + v71;
v75 = 3 + -4;
v15 (v74, v75);
}
break;
case 3: 
{
unsigned short v76;
signed char v77;
v76 = 2 + 5;
v77 = v29 (v76);
history[history_index++] = (int)v77;
}
break;
case 5: 
{
unsigned short v78;
v78 = v21 ();
history[history_index++] = (int)v78;
}
break;
case 15: 
return -4;
default: abort ();
}
}
}
}
