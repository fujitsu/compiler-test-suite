#include <stdlib.h>
signed int v1 (unsigned char);
signed int (*v2) (unsigned char) = v1;
extern unsigned int v3 (unsigned char, unsigned char, signed short);
extern unsigned int (*v4) (unsigned char, unsigned char, signed short);
extern signed char v5 (unsigned char, unsigned char);
extern signed char (*v6) (unsigned char, unsigned char);
unsigned char v7 (void);
unsigned char (*v8) (void) = v7;
extern unsigned int v9 (signed char, unsigned char, unsigned char);
extern unsigned int (*v10) (signed char, unsigned char, unsigned char);
extern signed short v11 (unsigned int);
extern signed short (*v12) (unsigned int);
extern unsigned int v13 (unsigned char);
extern unsigned int (*v14) (unsigned char);
extern void v15 (signed int, signed int, signed int);
extern void (*v16) (signed int, signed int, signed int);
extern unsigned int v17 (unsigned int);
extern unsigned int (*v18) (unsigned int);
extern void v19 (unsigned int, signed int);
extern void (*v20) (unsigned int, signed int);
extern unsigned int v23 (signed int, unsigned char, signed int);
extern unsigned int (*v24) (signed int, unsigned char, signed int);
extern void v25 (unsigned short, signed int, unsigned char);
extern void (*v26) (unsigned short, signed int, unsigned char);
void v27 (unsigned short, unsigned int);
void (*v28) (unsigned short, unsigned int) = v27;
extern signed int v29 (signed char, signed short, signed short);
extern signed int (*v30) (signed char, signed short, signed short);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v58 = 3U;
signed short v57 = 1;
signed char v56 = 1;

void v27 (unsigned short v59, unsigned int v60)
{
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = -3;
signed char v62 = 2;
unsigned char v61 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v7 (void)
{
{
for (;;) {
signed short v66 = -1;
unsigned int v65 = 5U;
signed int v64 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned char v67)
{
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = -2;
signed short v69 = -1;
signed char v68 = -4;
trace++;
switch (trace)
{
case 0: 
{
unsigned int v71;
signed int v72;
v71 = 3U - 3U;
v72 = v70 - v70;
v19 (v71, v72);
}
break;
case 2: 
{
unsigned char v73;
unsigned char v74;
signed char v75;
v73 = 7 + 0;
v74 = v67 - 6;
v75 = v5 (v73, v74);
history[history_index++] = (int)v75;
}
break;
case 8: 
{
unsigned int v76;
unsigned int v77;
v76 = 0U + 3U;
v77 = v17 (v76);
history[history_index++] = (int)v77;
}
break;
case 14: 
return -3;
default: abort ();
}
}
}
}
