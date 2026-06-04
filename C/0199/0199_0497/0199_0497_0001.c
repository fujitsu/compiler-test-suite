#include <stdlib.h>
signed char v3 (unsigned int);
signed char (*v4) (unsigned int) = v3;
unsigned int v5 (signed short);
unsigned int (*v6) (signed short) = v5;
extern signed char v7 (signed char, unsigned short);
extern signed char (*v8) (signed char, unsigned short);
extern signed int v9 (unsigned int, unsigned short, signed char, unsigned short);
extern signed int (*v10) (unsigned int, unsigned short, signed char, unsigned short);
extern signed char v11 (signed char, unsigned char);
extern signed char (*v12) (signed char, unsigned char);
extern signed int v13 (unsigned short, signed char, unsigned char, unsigned char);
extern signed int (*v14) (unsigned short, signed char, unsigned char, unsigned char);
extern unsigned short v15 (signed short, unsigned char, unsigned int);
extern unsigned short (*v16) (signed short, unsigned char, unsigned int);
extern unsigned int v17 (signed short);
extern unsigned int (*v18) (signed short);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (signed int, signed short, unsigned short, unsigned int);
extern void (*v26) (signed int, signed short, unsigned short, unsigned int);
static unsigned short v27 (unsigned char);
static unsigned short (*v28) (unsigned char) = v27;
extern void v29 (signed int, unsigned char, unsigned char);
extern void (*v30) (signed int, unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v56 = 4U;
unsigned char v55 = 7;
signed char v54 = -4;

static unsigned short v27 (unsigned char v57)
{
history[history_index++] = (int)v57;
{
for (;;) {
signed char v60 = 1;
signed char v59 = -1;
signed int v58 = -2;
trace++;
switch (trace)
{
case 2: 
return 1;
case 4: 
return 6;
case 6: 
return 5;
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
signed short v63 = 0;
signed short v62 = 3;
signed int v61 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v5 (signed short v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 4U;
unsigned short v66 = 3;
signed int v65 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned int v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 1;
signed int v70 = -2;
unsigned int v69 = 1U;
trace++;
switch (trace)
{
case 1: 
{
unsigned char v72;
unsigned short v73;
v72 = 5 + 0;
v73 = v27 (v72);
history[history_index++] = (int)v73;
}
break;
case 3: 
{
unsigned char v74;
unsigned short v75;
v74 = 5 + 3;
v75 = v27 (v74);
history[history_index++] = (int)v75;
}
break;
case 5: 
{
unsigned char v76;
unsigned short v77;
v76 = 3 + 0;
v77 = v27 (v76);
history[history_index++] = (int)v77;
}
break;
case 7: 
{
signed char v78;
unsigned char v79;
signed char v80;
v78 = 1 - 1;
v79 = 0 + 2;
v80 = v11 (v78, v79);
history[history_index++] = (int)v80;
}
break;
case 9: 
{
signed short v81;
unsigned char v82;
unsigned int v83;
unsigned short v84;
v81 = 1 + -2;
v82 = 5 + 4;
v83 = v69 + v68;
v84 = v15 (v81, v82, v83);
history[history_index++] = (int)v84;
}
break;
case 13: 
return -1;
default: abort ();
}
}
}
}
