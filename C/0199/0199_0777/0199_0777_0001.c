#include <stdlib.h>
extern unsigned char v1 (unsigned int);
extern unsigned char (*v2) (unsigned int);
unsigned char v3 (signed short);
unsigned char (*v4) (signed short) = v3;
extern signed short v7 (unsigned char);
extern signed short (*v8) (unsigned char);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern signed char v11 (void);
extern signed char (*v12) (void);
void v13 (unsigned int);
void (*v14) (unsigned int) = v13;
extern signed int v15 (void);
extern signed int (*v16) (void);
extern signed short v17 (unsigned int);
extern signed short (*v18) (unsigned int);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern signed char v21 (signed short);
extern signed char (*v22) (signed short);
static signed short v23 (unsigned char, unsigned char, signed int);
static signed short (*v24) (unsigned char, unsigned char, signed int) = v23;
extern void v25 (unsigned char, unsigned int, signed int, signed short);
extern void (*v26) (unsigned char, unsigned int, signed int, signed short);
extern unsigned char v27 (unsigned int, unsigned char);
extern unsigned char (*v28) (unsigned int, unsigned char);
extern unsigned short v29 (unsigned short, signed char);
extern unsigned short (*v30) (unsigned short, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v61 = 5;
signed short v60 = -3;
unsigned char v59 = 4;

static signed short v23 (unsigned char v62, unsigned char v63, signed int v64)
{
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed char v67 = -4;
signed short v66 = 2;
signed int v65 = 0;
trace++;
switch (trace)
{
case 4: 
return v66;
case 6: 
return -3;
default: abort ();
}
}
}
}

void v13 (unsigned int v68)
{
history[history_index++] = (int)v68;
{
for (;;) {
unsigned short v71 = 5;
unsigned int v70 = 6U;
signed int v69 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed int v74 = 1;
unsigned int v73 = 0U;
signed char v72 = -4;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v75;
unsigned char v76;
signed int v77;
signed short v78;
v75 = 6 - 5;
v76 = 7 + 1;
v77 = 0 + v74;
v78 = v23 (v75, v76, v77);
history[history_index++] = (int)v78;
}
break;
case 5: 
{
unsigned char v79;
unsigned char v80;
signed int v81;
signed short v82;
v79 = 7 - 0;
v80 = 5 - 6;
v81 = 2 + v74;
v82 = v23 (v79, v80, v81);
history[history_index++] = (int)v82;
}
break;
case 7: 
return -2;
default: abort ();
}
}
}
}

unsigned char v3 (signed short v83)
{
history[history_index++] = (int)v83;
{
for (;;) {
unsigned int v86 = 7U;
unsigned short v85 = 6;
signed char v84 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
