#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed int, unsigned int);
extern unsigned char (*v2) (unsigned int, signed int, unsigned int);
signed char v3 (unsigned short, unsigned int);
signed char (*v4) (unsigned short, unsigned int) = v3;
unsigned short v5 (signed char, unsigned int);
unsigned short (*v6) (signed char, unsigned int) = v5;
extern unsigned char v7 (unsigned char, signed int, unsigned char, unsigned short);
extern unsigned char (*v8) (unsigned char, signed int, unsigned char, unsigned short);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern unsigned int v11 (unsigned short);
extern unsigned int (*v12) (unsigned short);
extern signed int v13 (unsigned char, unsigned char, unsigned short, signed short);
extern signed int (*v14) (unsigned char, unsigned char, unsigned short, signed short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
signed int v17 (unsigned short, unsigned short, signed int);
signed int (*v18) (unsigned short, unsigned short, signed int) = v17;
extern signed int v19 (unsigned int, unsigned int);
extern signed int (*v20) (unsigned int, unsigned int);
extern signed int v21 (void);
extern signed int (*v22) (void);
extern signed int v23 (unsigned short, signed short);
extern signed int (*v24) (unsigned short, signed short);
extern signed short v25 (signed char, unsigned char);
extern signed short (*v26) (signed char, unsigned char);
extern signed char v27 (void);
extern signed char (*v28) (void);
static unsigned char v29 (unsigned char, unsigned int);
static unsigned char (*v30) (unsigned char, unsigned int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v77 = 7U;
signed short v76 = 0;
unsigned char v75 = 6;

static unsigned char v29 (unsigned char v78, unsigned int v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 7U;
unsigned short v81 = 2;
signed int v80 = 1;
trace++;
switch (trace)
{
case 4: 
return v78;
default: abort ();
}
}
}
}

signed int v17 (unsigned short v83, unsigned short v84, signed int v85)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
{
for (;;) {
signed short v88 = 1;
unsigned short v87 = 1;
unsigned int v86 = 5U;
trace++;
switch (trace)
{
case 3: 
{
unsigned char v89;
unsigned int v90;
unsigned char v91;
v89 = 6 + 5;
v90 = v86 + 4U;
v91 = v29 (v89, v90);
history[history_index++] = (int)v91;
}
break;
case 5: 
return v85;
default: abort ();
}
}
}
}

unsigned short v5 (signed char v92, unsigned int v93)
{
history[history_index++] = (int)v92;
history[history_index++] = (int)v93;
{
for (;;) {
unsigned int v96 = 0U;
unsigned char v95 = 4;
unsigned short v94 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v3 (unsigned short v97, unsigned int v98)
{
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned short v101 = 2;
signed char v100 = -3;
unsigned char v99 = 1;
trace++;
switch (trace)
{
case 9: 
{
unsigned short v102;
v102 = v15 ();
history[history_index++] = (int)v102;
}
break;
case 11: 
return v100;
default: abort ();
}
}
}
}
