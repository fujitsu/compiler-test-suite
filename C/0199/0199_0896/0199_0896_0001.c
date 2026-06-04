#include <stdlib.h>
extern void v1 (unsigned int, unsigned short, unsigned int);
extern void (*v2) (unsigned int, unsigned short, unsigned int);
extern signed char v3 (void);
extern signed char (*v4) (void);
extern signed short v5 (signed short, unsigned char, signed int, unsigned int);
extern signed short (*v6) (signed short, unsigned char, signed int, unsigned int);
extern signed short v7 (signed int, unsigned short);
extern signed short (*v8) (signed int, unsigned short);
extern void v9 (unsigned int);
extern void (*v10) (unsigned int);
extern unsigned short v11 (unsigned char, signed char, unsigned int);
extern unsigned short (*v12) (unsigned char, signed char, unsigned int);
extern signed char v13 (signed char, signed char, signed int);
extern signed char (*v14) (signed char, signed char, signed int);
signed short v15 (unsigned char, signed int);
signed short (*v16) (unsigned char, signed int) = v15;
extern unsigned int v17 (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned int (*v18) (unsigned short, unsigned short, unsigned char, signed int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
signed short v21 (unsigned short, unsigned short);
signed short (*v22) (unsigned short, unsigned short) = v21;
unsigned int v23 (unsigned short, unsigned int, signed char, unsigned short);
unsigned int (*v24) (unsigned short, unsigned int, signed char, unsigned short) = v23;
void v25 (unsigned char, signed short, unsigned int);
void (*v26) (unsigned char, signed short, unsigned int) = v25;
extern void v27 (signed short);
extern void (*v28) (signed short);
extern unsigned char v29 (unsigned short, unsigned int, signed int);
extern unsigned char (*v30) (unsigned short, unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v60 = 2;
signed char v59 = -2;
unsigned short v58 = 5;

void v25 (unsigned char v61, signed short v62, unsigned int v63)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
{
for (;;) {
unsigned char v66 = 4;
unsigned int v65 = 7U;
unsigned char v64 = 6;
trace++;
switch (trace)
{
case 3: 
return;
default: abort ();
}
}
}
}

unsigned int v23 (unsigned short v67, unsigned int v68, signed char v69, unsigned short v70)
{
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
unsigned short v73 = 0;
unsigned int v72 = 5U;
unsigned int v71 = 5U;
trace++;
switch (trace)
{
case 10: 
{
unsigned short v74;
unsigned int v75;
signed int v76;
unsigned char v77;
v74 = v67 + 2;
v75 = 5U - v71;
v76 = 1 - -1;
v77 = v29 (v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 12: 
return v71;
default: abort ();
}
}
}
}

signed short v21 (unsigned short v78, unsigned short v79)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
{
for (;;) {
unsigned int v82 = 7U;
unsigned int v81 = 0U;
signed short v80 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (unsigned char v83, signed int v84)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
{
for (;;) {
signed int v87 = 2;
signed short v86 = -2;
unsigned int v85 = 6U;
trace++;
switch (trace)
{
case 6: 
{
signed short v88;
v88 = v86 + v86;
v27 (v88);
}
break;
case 8: 
{
unsigned char v89;
v89 = v19 ();
history[history_index++] = (int)v89;
}
break;
case 14: 
return v86;
default: abort ();
}
}
}
}
