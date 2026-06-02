#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (signed char, signed char, unsigned int);
extern void (*v4) (signed char, signed char, unsigned int);
unsigned int v5 (unsigned int, signed short);
unsigned int (*v6) (unsigned int, signed short) = v5;
signed int v7 (unsigned short, unsigned char);
signed int (*v8) (unsigned short, unsigned char) = v7;
extern unsigned short v9 (signed int, signed char, signed int);
extern unsigned short (*v10) (signed int, signed char, signed int);
extern signed char v11 (signed short, signed int, signed char, unsigned int);
extern signed char (*v12) (signed short, signed int, signed char, unsigned int);
signed char v13 (unsigned int, signed int);
signed char (*v14) (unsigned int, signed int) = v13;
extern unsigned char v15 (signed char, unsigned char);
extern unsigned char (*v16) (signed char, unsigned char);
extern signed char v17 (void);
extern signed char (*v18) (void);
void v19 (void);
void (*v20) (void) = v19;
extern signed char v21 (unsigned short);
extern signed char (*v22) (unsigned short);
extern unsigned short v25 (unsigned char, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned char, unsigned short, unsigned short, unsigned int);
extern signed char v27 (signed short);
extern signed char (*v28) (signed short);
extern signed char v29 (signed short, signed int, unsigned char);
extern signed char (*v30) (signed short, signed int, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v60 = 3;
unsigned int v59 = 1U;
unsigned short v58 = 1;

void v19 (void)
{
{
for (;;) {
unsigned short v63 = 5;
unsigned int v62 = 5U;
unsigned int v61 = 4U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (unsigned int v64, signed int v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned short v68 = 2;
signed short v67 = 2;
signed int v66 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v7 (unsigned short v69, unsigned char v70)
{
history[history_index++] = (int)v69;
history[history_index++] = (int)v70;
{
for (;;) {
signed short v73 = -4;
signed int v72 = 3;
unsigned int v71 = 0U;
trace++;
switch (trace)
{
case 7: 
{
signed char v74;
signed char v75;
unsigned int v76;
v74 = -1 + 3;
v75 = 0 - 3;
v76 = v71 - 3U;
v3 (v74, v75, v76);
}
break;
case 9: 
{
signed short v77;
signed int v78;
signed char v79;
unsigned int v80;
signed char v81;
v77 = v73 + 2;
v78 = -1 + -1;
v79 = -1 - -4;
v80 = 6U + v71;
v81 = v11 (v77, v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 11: 
return v72;
default: abort ();
}
}
}
}

unsigned int v5 (unsigned int v82, signed short v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned short v86 = 1;
signed char v85 = 2;
unsigned char v84 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
