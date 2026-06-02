#include <stdlib.h>
extern signed char v1 (unsigned int, unsigned int, unsigned char);
extern signed char (*v2) (unsigned int, unsigned int, unsigned char);
void v3 (unsigned short);
void (*v4) (unsigned short) = v3;
extern void v5 (signed char);
extern void (*v6) (signed char);
signed short v7 (unsigned short, signed short, unsigned int);
signed short (*v8) (unsigned short, signed short, unsigned int) = v7;
extern signed char v9 (unsigned int);
extern signed char (*v10) (unsigned int);
extern unsigned short v11 (unsigned int, signed char);
extern unsigned short (*v12) (unsigned int, signed char);
extern unsigned int v13 (unsigned int);
extern unsigned int (*v14) (unsigned int);
signed int v15 (signed char);
signed int (*v16) (signed char) = v15;
extern unsigned int v17 (signed int, unsigned char, signed int, unsigned int);
extern unsigned int (*v18) (signed int, unsigned char, signed int, unsigned int);
extern unsigned char v19 (signed short, unsigned char, signed short);
extern unsigned char (*v20) (signed short, unsigned char, signed short);
extern signed int v21 (signed short, signed int);
extern signed int (*v22) (signed short, signed int);
extern unsigned short v23 (void);
extern unsigned short (*v24) (void);
extern signed int v25 (signed int, signed int, signed char, signed short);
extern signed int (*v26) (signed int, signed int, signed char, signed short);
unsigned char v27 (void);
unsigned char (*v28) (void) = v27;
extern signed int v29 (unsigned int, signed int);
extern signed int (*v30) (unsigned int, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v60 = 2;
unsigned short v59 = 7;
signed short v58 = 1;

unsigned char v27 (void)
{
{
for (;;) {
unsigned char v63 = 6;
signed int v62 = -4;
signed short v61 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed char v64)
{
history[history_index++] = (int)v64;
{
for (;;) {
unsigned int v67 = 2U;
unsigned int v66 = 4U;
signed int v65 = -1;
trace++;
switch (trace)
{
case 8: 
{
signed short v68;
unsigned char v69;
signed short v70;
unsigned char v71;
v68 = 3 + 2;
v69 = 0 - 3;
v70 = 0 + 2;
v71 = v19 (v68, v69, v70);
history[history_index++] = (int)v71;
}
break;
case 12: 
return v65;
default: abort ();
}
}
}
}

signed short v7 (unsigned short v72, signed short v73, unsigned int v74)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
{
for (;;) {
signed char v77 = -4;
unsigned int v76 = 7U;
unsigned short v75 = 7;
trace++;
switch (trace)
{
case 5: 
return 2;
default: abort ();
}
}
}
}

void v3 (unsigned short v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
unsigned short v81 = 2;
unsigned int v80 = 3U;
signed char v79 = -4;
trace++;
switch (trace)
{
case 1: 
return;
default: abort ();
}
}
}
}
